
class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}

const locations = [
   Location(
    place: 'Sekumpul Waterfall',
    name: 'Bali, Indonesia',
    imageUrl: 'https://images.unsplash.com/photo-1554931670-4ebfabf6e7a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80',
  ),
 Location(
    place: 'Santorini, Greece',
    name: 'Aegean Paradise',
    imageUrl: 'https://images.unsplash.com/photo-1491955524898-bdbdb5668abb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80',
  ),
  Location(
    place: 'Kyoto, Japan',
    name: 'Cultural Gem',
    imageUrl: 'https://images.unsplash.com/photo-1522547902298-51566e4fb383?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2835&q=80',
  ),
  Location(
    place: 'Bora Bora, French Polynesia',
    name: 'Tropical Paradise',
    imageUrl: 'https://images.unsplash.com/photo-1662283804757-ef81acd5471e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2865&q=80',
  ),
  Location(
    place: 'Venice, Italy',
    name: 'City of Canals',
    imageUrl: 'https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2783&q=80',
  ),
  Location(
    name: 'Machu Picchu',
    place: 'Peru  ',
    imageUrl: 'https://images.unsplash.com/photo-1509216242873-7786f446f465?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2835&q=80',
  ),
  Location(
    name: 'The Grand Canyon',
    place: 'USA',
    imageUrl: 'https://images.unsplash.com/photo-1594751278479-f06f93076ea2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80',
  ),
  Location(
    name: 'Cape Town',
    place: 'South Africa',
    imageUrl: 'https://images.unsplash.com/photo-1529528070131-eda9f3e90919?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2835&q=80',
  ),
];