// To parse this JSON data, do
//
//     final catModel = catModelFromMap(jsonString);

import 'dart:convert';


class CatModel {
    CatModel({
        required this.adaptability,
        required this.affectionLevel,
        required this.childFriendly,
        required this.countryCode,
        required this.countryCodes,
        required this.description,
        required this.dogFriendly,
        required this.energyLevel,
        required this.experimental,
        required this.grooming,
        required this.hairless,
        required this.healthIssues,
        required this.id,
        // required this.image,
        required this.indoor,
        required this.intelligence,
        required this.lap,
        required this.lifeSpan,
        required this.name,
        required this.natural,
        required this.origin,
        required this.rare,
        required this.referenceImageId,
        required this.sheddingLevel,
        required this.shortLegs,
        required this.socialNeeds,
        required this.strangerFriendly,
        required this.suppressedTail,
        required this.temperament,
        required this.vetstreetUrl,
        required this.wikipediaUrl,
        required this.bidability,
        required this.catFriendly,
    });

    final int adaptability;
    final int affectionLevel;
    final int childFriendly;
    final String countryCode;
    final String countryCodes;
    final String description;
    final int dogFriendly;
    final int energyLevel;
    final int experimental;
    final int grooming;
    final int hairless;
    final int healthIssues;
    final String id;
    // final String image;
    final int indoor;
    final int intelligence;
    final int lap;
    final String lifeSpan;
    final String name;
    final int natural;
    final String origin;
    final int rare;
    final String referenceImageId;
    final int sheddingLevel;
    final int shortLegs;
    final int socialNeeds;
    final int strangerFriendly;
    final int suppressedTail;
    final String temperament;
    final String vetstreetUrl;
    final String wikipediaUrl;
    final int bidability;
    final int catFriendly;

    CatModel copyWith({
        int? adaptability,
        int? affectionLevel,
        int? childFriendly,
        String? countryCode,
        String? countryCodes,
        String? description,
        int? dogFriendly,
        int? energyLevel,
        int? experimental,
        int? grooming,
        int? hairless,
        int? healthIssues,
        String? id,
        String? image,
        int? indoor,
        int? intelligence,
        int? lap,
        String? lifeSpan,
        String? name,
        int? natural,
        String? origin,
        int? rare,
        String? referenceImageId,
        int? sheddingLevel,
        int? shortLegs,
        int? socialNeeds,
        int? strangerFriendly,
        int? suppressedTail,
        String? temperament,
        String? vetstreetUrl,
        int? vocalisation,
        String? wikipediaUrl,
        int? bidability,
        int? catFriendly,
    }) => 
        CatModel(
            adaptability: adaptability ?? this.adaptability,
            affectionLevel: affectionLevel ?? this.affectionLevel,
            childFriendly: childFriendly ?? this.childFriendly,
            countryCode: countryCode ?? this.countryCode,
            countryCodes: countryCodes ?? this.countryCodes,
            description: description ?? this.description,
            dogFriendly: dogFriendly ?? this.dogFriendly,
            energyLevel: energyLevel ?? this.energyLevel,
            experimental: experimental ?? this.experimental,
            grooming: grooming ?? this.grooming,
            hairless: hairless ?? this.hairless,
            healthIssues: healthIssues ?? this.healthIssues,
            id: id ?? this.id,
            // image: image ?? this.image,
            indoor: indoor ?? this.indoor,
            intelligence: intelligence ?? this.intelligence,
            lap: lap ?? this.lap,
            lifeSpan: lifeSpan ?? this.lifeSpan,
            name: name ?? this.name,
            natural: natural ?? this.natural,
            origin: origin ?? this.origin,
            rare: rare ?? this.rare,
            referenceImageId: referenceImageId ?? this.referenceImageId,
            sheddingLevel: sheddingLevel ?? this.sheddingLevel,
            shortLegs: shortLegs ?? this.shortLegs,
            socialNeeds: socialNeeds ?? this.socialNeeds,
            strangerFriendly: strangerFriendly ?? this.strangerFriendly,
            suppressedTail: suppressedTail ?? this.suppressedTail,
            temperament: temperament ?? this.temperament,
            vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
            wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
            bidability: bidability ?? this.bidability,
            catFriendly: catFriendly ?? this.catFriendly,
        );

    factory CatModel.fromJson(String str) => CatModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CatModel.fromMap(Map<String, dynamic> json) => CatModel(
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        countryCode: json["country_code"],
        countryCodes: json["country_codes"],
        description: json["description"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        experimental: json["experimental"],
        grooming: json["grooming"],
        hairless: json["hairless"],
        healthIssues: json["health_issues"],
        id: json["id"],
        // image: json["image"],
        indoor: json["indoor"],
        intelligence: json["intelligence"],
        lap: json["lap"],
        lifeSpan: json["life_span"],
        name: json["name"],
        natural: json["natural"],
        origin: json["origin"],
        rare: json["rare"],
        referenceImageId: json["reference_image_id"],
        sheddingLevel: json["shedding_level"],
        shortLegs: json["short_legs"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        suppressedTail: json["suppressed_tail"],
        temperament: json["temperament"],
        vetstreetUrl: json["vetstreet_url"],
        wikipediaUrl: json["wikipedia_url"],
        bidability: json["bidability"],
        catFriendly: json["cat_friendly"],
    );

    Map<String, dynamic> toMap() => {
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "country_code": countryCode,
        "country_codes": countryCodes,
        "description": description,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "experimental": experimental,
        "grooming": grooming,
        "hairless": hairless,
        "health_issues": healthIssues,
        "id": id,
        // "image": image,
        "indoor": indoor,
        "intelligence": intelligence,
        "lap": lap,
        "life_span": lifeSpan,
        "name": name,
        "natural": natural,
        "origin": origin,
        "rare": rare,
        "reference_image_id": referenceImageId,
        "shedding_level": sheddingLevel,
        "short_legs": shortLegs,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "suppressed_tail": suppressedTail,
        "temperament": temperament,
        "vetstreet_url": vetstreetUrl,
        "wikipedia_url": wikipediaUrl,
        "bidability": bidability,
        "cat_friendly": catFriendly,
    };
}

class Image {
    Image({
        required this.height,
        required this.id,
        required this.url,
        required this.width,
    });

    final int height;
    final String id;
    final String url;
    final int width;

    Image copyWith({
        int? height,
        String? id,
        String? url,
        int? width,
    }) => 
        Image(
            height: height ?? this.height,
            id: id ?? this.id,
            url: url ?? this.url,
            width: width ?? this.width,
        );

    factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Image.fromMap(Map<String, dynamic> json) => Image(
        height: json["height"],
        id: json["id"],
        url: json["url"],
        width: json["width"],
    );

    Map<String, dynamic> toMap() => {
        "height": height,
        "id": id,
        "url": url,
        "width": width,
    };
}

