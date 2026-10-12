if (new URLSearchParams(location.search).get('embed') !== '1') {
  const banner = document.createElement('nav');
  banner.setAttribute('aria-label', 'Pharm.D Vault course navigation');
  banner.style.cssText = 'padding:12px 20px;background:#123b19;color:white;display:flex;flex-wrap:wrap;gap:10px;align-items:center;font:14px system-ui';
  const home = document.createElement('a');
  home.href = '/#/publications';
  home.textContent = 'Pharm.D Vault · Publications';
  home.style.color = '#f1d975';
  const status = document.createElement('span');
  status.textContent = 'Human Anatomy, Physiology and Pathophysiology · B.Pharm 2026 (NEP 2020) · Free access';
  banner.append(home, status);
  document.body.prepend(banner);
  document.title = 'Human Anatomy, Physiology and Pathophysiology | Pharm.D Vault';
}
