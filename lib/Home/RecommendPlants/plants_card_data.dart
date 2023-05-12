// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Plants {
  String? name;
  String? description;
  String? image;
  Plants({this.name, this.description, this.image});
}

List<Plants> plantsCardsList = [
  Plants(
      name: "spathiphyllum",
      description:
      'is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae',
      image: 'assets/plants_card/Spathiphyllum.png'),
  Plants(
      name: "Coffea plants",
      description:
      'The coffee plant is an attractive little specimen with glossy green leaves and a compact growth habit',
      image: 'assets/plants_card/Coffea plants.png'),
  Plants(
      name: "Laurus nobilis",
      description:
      'Laurus nobilis is an aromatic evergreen tree or large shrub with green',
      image: 'assets/plants_card/Laurus nobilis.png'),
  Plants(
      name: "Chamaecyparis",
      description:
      'Chamaecyparis is a genus of evergreen monoecious coniferous trees with characteristic scaly needles densely covering flat shoots',
      image: 'assets/plants_card/Chamaecyparis.png'),
  Plants(
      name: "Sansevieria",
      description:
      "Sansevieria or the Mother-in-Law's Tongue / Snake Plant as it's commonly known is a truly remarkable and striking easy care houseplant.",
      image: 'assets/plants_card/Sansevieria.png'),
  Plants(
      name: "Ficus",
      description:
      'Ficus is a pantropical genus of trees, shrubs, and vines occupying a wide variety of ecological niches; most are evergreen',
      image: 'assets/plants_card/Ficus.png'),
];
