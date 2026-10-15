(() => {
  const mode = document.currentScript.dataset.pdvMode;
  const icon = (style) => {
    const element = document.createElement('span');
    element.className = `pdv-loader-icon pdv-${style}`;
    element.setAttribute('aria-hidden', 'true');
    if (style === 'orbit') element.textContent = 'Rx';
    return element;
  };
  if (mode === 'capsule') {
    const overlay = document.createElement('div');
    overlay.className = 'pdv-boot';
    const card = document.createElement('div');
    card.className = 'pdv-boot-card';
    card.setAttribute('role', 'status');
    const label = document.createElement('span');
    label.textContent = 'Preparing your learning space…';
    card.append(icon('capsule'), label);
    const retry = document.createElement('button');
    retry.textContent = 'Reload website';
    retry.hidden = true;
    retry.onclick = () => location.reload();
    overlay.append(card, retry);
    document.body.append(overlay);
    const timeout = setTimeout(() => {
      label.textContent = 'Loading is taking longer than expected. Check your connection or try reloading.';
      retry.hidden = false;
    }, 30000);
    window.addEventListener('flutter-first-frame', () => {
      clearTimeout(timeout);
      overlay.remove();
    }, {once: true});
    return;
  }
  const decorate = () => {
    const selector = mode === 'vault' ? '#loading:not([hidden])' : '.loading:not(.error)';
    document.querySelectorAll(selector).forEach(element => {
      if (element.querySelector('.pdv-loader-icon')) return;
      element.classList.add('pdv-active-loader');
      element.setAttribute('role', 'status');
      const originalIcon = element.querySelector(':scope > svg');
      if (originalIcon) originalIcon.style.display = 'none';
      element.prepend(icon(mode));
    });
  };
  decorate();
  new MutationObserver(decorate).observe(document.body, {childList: true, subtree: true, attributes: true, attributeFilter: ['hidden']});
})();
