class TeamMember {
  final String id;
  final String name;
  final String qualification;
  final String designation;
  final String department;
  final String organization;
  final String profileImage;
  final String email;
  final String phone;
  final String linkedIn;
  final String researchGate;
  final String orcid;
  final String biography;
  final List<String> expertise;
  final bool active;

  const TeamMember({
    required this.id,
    required this.name,
    required this.qualification,
    required this.designation,
    required this.department,
    required this.organization,
    required this.profileImage,
    required this.email,
    required this.phone,
    required this.linkedIn,
    required this.researchGate,
    required this.orcid,
    required this.biography,
    required this.expertise,
    this.active = true,
  });

  factory TeamMember.fromMap(Map<String, dynamic> map) {
    return TeamMember(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      qualification: map['qualification'] ?? '',
      designation: map['designation'] ?? '',
      department: map['department'] ?? '',
      organization: map['organization'] ?? '',
      profileImage: map['profileImage'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      linkedIn: map['linkedIn'] ?? '',
      researchGate: map['researchGate'] ?? '',
      orcid: map['orcid'] ?? '',
      biography: map['biography'] ?? '',
      expertise: List<String>.from(map['expertise'] ?? []),
      active: map['active'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'qualification': qualification,
      'designation': designation,
      'department': department,
      'organization': organization,
      'profileImage': profileImage,
      'email': email,
      'phone': phone,
      'linkedIn': linkedIn,
      'researchGate': researchGate,
      'orcid': orcid,
      'biography': biography,
      'expertise': expertise,
      'active': active,
    };
  }
}
