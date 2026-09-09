import '../models/team_member.dart';

class TeamData {
  TeamData._();

  static final List<TeamMember> members = [
    TeamMember(
      id: 'TM001',
      name: 'Dr. K. Nandhakumar',
      qualification: 'Pharm.D',
      designation: 'Founder & President',
      department: 'Clinical Pharmacy',
      organization: 'Pharm.D Vault Organization',
      profileImage: '',
      email: 'pharmdvault2025@gmail.com',
      phone: '+91 9361542119',
      linkedIn: '',
      researchGate: '',
      orcid: '',
      biography:
          'Founder of Pharm.D Vault Organization dedicated to promoting pharmacy education, research and scientific publications.',
      expertise: [
        'Clinical Pharmacy',
        'Artificial Intelligence',
        'Research',
        'Medical Writing',
      ],
      active: true,
    ),

    TeamMember(
      id: 'TM002',
      name: 'Editorial Board Member',
      qualification: 'Pharm.D',
      designation: 'Editorial Board',
      department: 'Research Publications',
      organization: 'Pharm.D Vault Organization',
      profileImage: '',
      email: '',
      phone: '',
      linkedIn: '',
      researchGate: '',
      orcid: '',
      biography:
          'Editorial board member responsible for article screening and publication quality.',
      expertise: ['Research', 'Peer Review'],
      active: true,
    ),

    TeamMember(
      id: 'TM003',
      name: 'Research Committee Member',
      qualification: 'Pharm.D',
      designation: 'Research Committee',
      department: 'Research',
      organization: 'Pharm.D Vault Organization',
      profileImage: '',
      email: '',
      phone: '',
      linkedIn: '',
      researchGate: '',
      orcid: '',
      biography:
          'Supports research planning, article preparation and academic activities.',
      expertise: ['Research Methodology', 'Statistics'],
      active: true,
    ),
  ];
}
