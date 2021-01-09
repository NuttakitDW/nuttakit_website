class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Roostoo',
    description:
        'Roostoo is a lifelike mock crypto trading simulator for people looking to gain cryptocurrency experience. Practice trading at no cost with real-time market data. Mostly of Roostoo application done by Alex and Jolly co-founder of Roostoo.',
    image: 'images/projects/roostoo.png',
    url: 'https://www.roostoo.com/',
    skills: [
      'Bitcoin',
      'Cryptocurrencies',
      'Investment',
      'Financial',
      'Trading',
    ],
  ),
  Project(
    name: 'CUBS ERC20 Token',
    description:
        'CUBS ERC20 Token is an digital token that is ruled by smart contract wrote by solidity and is used in CU Blockchain Society Club.',
    image: 'images/projects/cubs.png',
    url:
        'https://kovan.etherscan.io/token/0xbB318eF099299F2Ca28a79986354Bb13A23444F7',
    skills: [
      'ERC20',
      'Cryptocurrencies',
      'Solidity',
      'Smart Contract',
    ],
  ),

  Project(
    name: 'Medium Articles',
    description:
        'Medium is an open platform where readers find dynamic thinking, and where expert and undiscovered voices can share their writing on any topic. You can read my all articles here.',
    image: 'images/projects/medium.png',
    url:
        'https://nuttakitkundum.medium.com/',
    skills: [
      'Science',
      'Math',
      'Programming',
      'Investment',
    ],
  ),
];
