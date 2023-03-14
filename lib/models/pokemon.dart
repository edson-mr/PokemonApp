import 'dart:convert';

class Pokemon {
  Pokemon({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  List<Ability> abilities;
  int baseExperience;
  List<Species> forms;
  List<GameIndex> gameIndices;
  int height;
  List<dynamic> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Move> moves;
  String name;
  int order;
  List<dynamic> pastTypes;
  Species species;
  Sprites sprites;
  List<Stat> stats;
  List<Type> types;
  int weight;

  factory Pokemon.fromJson(String str) => Pokemon.fromMap(json.decode(str));

  factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromMap(x))),
        baseExperience: json["base_experience"],
        forms: List<Species>.from(json["forms"].map((x) => Species.fromMap(x))),
        gameIndices: List<GameIndex>.from(
            json["game_indices"].map((x) => GameIndex.fromMap(x))),
        height: json["height"],
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<Move>.from(json["moves"].map((x) => Move.fromMap(x))),
        name: json["name"],
        order: json["order"],
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        species: Species.fromMap(json["species"]),
        sprites: Sprites.fromMap(json["sprites"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromMap(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromMap(x))),
        weight: json["weight"],
      );

}

class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  Species ability;
  bool isHidden;
  int slot;

  factory Ability.fromJson(String str) => Ability.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ability.fromMap(Map<String, dynamic> json) => Ability(
        ability: Species.fromMap(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
      );

  Map<String, dynamic> toMap() => {
        "ability": ability.toMap(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory Species.fromJson(String str) => Species.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Species.fromMap(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}

class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  int gameIndex;
  Species version;

  factory GameIndex.fromJson(String str) => GameIndex.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GameIndex.fromMap(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Species.fromMap(json["version"]),
      );

  Map<String, dynamic> toMap() => {
        "game_index": gameIndex,
        "version": version.toMap(),
      };
}

class Move {
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  Species move;
  List<VersionGroupDetail> versionGroupDetails;

  factory Move.fromJson(String str) => Move.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Move.fromMap(Map<String, dynamic> json) => Move(
        move: Species.fromMap(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(
            json["version_group_details"]
                .map((x) => VersionGroupDetail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "move": move.toMap(),
        "version_group_details":
            List<dynamic>.from(versionGroupDetails.map((x) => x.toMap())),
      };
}

class VersionGroupDetail {
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  int levelLearnedAt;
  Species moveLearnMethod;
  Species versionGroup;

  factory VersionGroupDetail.fromJson(String str) =>
      VersionGroupDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VersionGroupDetail.fromMap(Map<String, dynamic> json) =>
      VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Species.fromMap(json["move_learn_method"]),
        versionGroup: Species.fromMap(json["version_group"]),
      );

  Map<String, dynamic> toMap() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod.toMap(),
        "version_group": versionGroup.toMap(),
      };
}

class GenerationV {
  GenerationV({
    required this.blackWhite,
  });

  Sprites blackWhite;

  factory GenerationV.fromJson(String str) =>
      GenerationV.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationV.fromMap(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromMap(json["black-white"]),
      );

  Map<String, dynamic> toMap() => {
        "black-white": blackWhite.toMap(),
      };
}

class GenerationIv {
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  Sprites diamondPearl;
  Sprites heartgoldSoulsilver;
  Sprites platinum;

  factory GenerationIv.fromJson(String str) =>
      GenerationIv.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIv.fromMap(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromMap(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromMap(json["heartgold-soulsilver"]),
        platinum: Sprites.fromMap(json["platinum"]),
      );

  Map<String, dynamic> toMap() => {
        "diamond-pearl": diamondPearl.toMap(),
        "heartgold-soulsilver": heartgoldSoulsilver.toMap(),
        "platinum": platinum.toMap(),
      };
}

class Versions {
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  Map<String, Home> generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

  factory Versions.fromJson(String str) => Versions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Versions.fromMap(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromMap(json["generation-i"]),
        generationIi: GenerationIi.fromMap(json["generation-ii"]),
        generationIii: GenerationIii.fromMap(json["generation-iii"]),
        generationIv: GenerationIv.fromMap(json["generation-iv"]),
        generationV: GenerationV.fromMap(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"])
            .map((k, v) => MapEntry<String, Home>(k, Home.fromMap(v))),
        generationVii: GenerationVii.fromMap(json["generation-vii"]),
        generationViii: GenerationViii.fromMap(json["generation-viii"]),
      );

  Map<String, dynamic> toMap() => {
        "generation-i": generationI.toMap(),
        "generation-ii": generationIi.toMap(),
        "generation-iii": generationIii.toMap(),
        "generation-iv": generationIv.toMap(),
        "generation-v": generationV.toMap(),
        "generation-vi": Map.from(generationVi)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "generation-vii": generationVii.toMap(),
        "generation-viii": generationViii.toMap(),
      };
}

class Sprites {
  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
  Other? other;
  Versions? versions;
  Sprites? animated;

  factory Sprites.fromJson(String str) => Sprites.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Sprites.fromMap(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
        other: json["other"] == null ? null : Other.fromMap(json["other"]),
        versions: json["versions"] == null
            ? null
            : Versions.fromMap(json["versions"]),
        animated:
            json["animated"] == null ? null : Sprites.fromMap(json["animated"]),
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
        "other": other?.toMap(),
        "versions": versions?.toMap(),
        "animated": animated?.toMap(),
      };
}

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  RedBlue redBlue;
  RedBlue yellow;

  factory GenerationI.fromJson(String str) =>
      GenerationI.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationI.fromMap(Map<String, dynamic> json) => GenerationI(
        redBlue: RedBlue.fromMap(json["red-blue"]),
        yellow: RedBlue.fromMap(json["yellow"]),
      );

  Map<String, dynamic> toMap() => {
        "red-blue": redBlue.toMap(),
        "yellow": yellow.toMap(),
      };
}

class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  String backDefault;
  String backGray;
  String backTransparent;
  String frontDefault;
  String frontGray;
  String frontTransparent;

  factory RedBlue.fromJson(String str) => RedBlue.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RedBlue.fromMap(Map<String, dynamic> json) => RedBlue(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_gray": frontGray,
        "front_transparent": frontTransparent,
      };
}

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  Crystal crystal;
  Gold gold;
  Gold silver;

  factory GenerationIi.fromJson(String str) =>
      GenerationIi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIi.fromMap(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromMap(json["crystal"]),
        gold: Gold.fromMap(json["gold"]),
        silver: Gold.fromMap(json["silver"]),
      );

  Map<String, dynamic> toMap() => {
        "crystal": crystal.toMap(),
        "gold": gold.toMap(),
        "silver": silver.toMap(),
      };
}

class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  String backDefault;
  String backShiny;
  String backShinyTransparent;
  String backTransparent;
  String frontDefault;
  String frontShiny;
  String frontShinyTransparent;
  String frontTransparent;

  factory Crystal.fromJson(String str) => Crystal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Crystal.fromMap(Map<String, dynamic> json) => Crystal(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backShinyTransparent: json["back_shiny_transparent"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontShinyTransparent: json["front_shiny_transparent"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_shiny_transparent": backShinyTransparent,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_shiny_transparent": frontShinyTransparent,
        "front_transparent": frontTransparent,
      };
}

class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;
  String? frontTransparent;

  factory Gold.fromJson(String str) => Gold.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Gold.fromMap(Map<String, dynamic> json) => Gold(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent,
      };
}

class GenerationIii {
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  OfficialArtwork emerald;
  Gold fireredLeafgreen;
  Gold rubySapphire;

  factory GenerationIii.fromJson(String str) =>
      GenerationIii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIii.fromMap(Map<String, dynamic> json) => GenerationIii(
        emerald: OfficialArtwork.fromMap(json["emerald"]),
        fireredLeafgreen: Gold.fromMap(json["firered-leafgreen"]),
        rubySapphire: Gold.fromMap(json["ruby-sapphire"]),
      );

  Map<String, dynamic> toMap() => {
        "emerald": emerald.toMap(),
        "firered-leafgreen": fireredLeafgreen.toMap(),
        "ruby-sapphire": rubySapphire.toMap(),
      };
}

class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  String frontDefault;
  String frontShiny;

  factory OfficialArtwork.fromJson(String str) =>
      OfficialArtwork.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OfficialArtwork.fromMap(Map<String, dynamic> json) => OfficialArtwork(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };
}

class Home {
  Home({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  factory Home.fromJson(String str) => Home.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Home.fromMap(Map<String, dynamic> json) => Home(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class GenerationVii {
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  DreamWorld icons;
  Home ultraSunUltraMoon;

  factory GenerationVii.fromJson(String str) =>
      GenerationVii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationVii.fromMap(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromMap(json["icons"]),
        ultraSunUltraMoon: Home.fromMap(json["ultra-sun-ultra-moon"]),
      );

  Map<String, dynamic> toMap() => {
        "icons": icons.toMap(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toMap(),
      };
}

class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    this.frontFemale,
  });

  String frontDefault;
  dynamic frontFemale;

  factory DreamWorld.fromJson(String str) =>
      DreamWorld.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DreamWorld.fromMap(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
      };
}

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  DreamWorld icons;

  factory GenerationViii.fromJson(String str) =>
      GenerationViii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationViii.fromMap(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromMap(json["icons"]),
      );

  Map<String, dynamic> toMap() => {
        "icons": icons.toMap(),
      };
}

class Other {
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  DreamWorld dreamWorld;
  Home home;
  OfficialArtwork officialArtwork;

  factory Other.fromJson(String str) => Other.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Other.fromMap(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromMap(json["dream_world"]),
        home: Home.fromMap(json["home"]),
        officialArtwork: OfficialArtwork.fromMap(json["official-artwork"]),
      );

  Map<String, dynamic> toMap() => {
        "dream_world": dreamWorld.toMap(),
        "home": home.toMap(),
        "official-artwork": officialArtwork.toMap(),
      };
}

class Stat {
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  int baseStat;
  int effort;
  Species stat;

  factory Stat.fromJson(String str) => Stat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stat.fromMap(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Species.fromMap(json["stat"]),
      );

  Map<String, dynamic> toMap() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toMap(),
      };
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  int slot;
  Species type;

  factory Type.fromJson(String str) => Type.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Type.fromMap(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromMap(json["type"]),
      );

  Map<String, dynamic> toMap() => {
        "slot": slot,
        "type": type.toMap(),
      };
}
