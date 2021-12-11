

import 'package:meta/meta.dart';
import 'dart:convert';


class UsersResponse {
    UsersResponse({
        required this.status,
        required this.message,
        required this.result,
    });

    bool status;
    dynamic message;
    Result result;

    factory UsersResponse.fromJson(Map<String, dynamic> json) => UsersResponse(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": result.toJson(),
    };
}

class Result {
    Result({
        required this.data,
        required this.links,
        required this.meta,
    });

    List<Datum> data;
    Links links;
    Meta meta;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "links": links.toJson(),
        "meta": meta.toJson(),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.orderNo,
        required this.orderDate,
        required this.deliveryDate,
        required this.name,
        required this.addr1,
        required this.addr2,
        required this.addr3,
        required this.orderStatus,
        required this.zipcode,
        required this.city,
        required this.stateOrRegion,
        required this.orderTotal,
        required this.orderWeight,
        required this.channelType,
        required this.channelId,
        required this.sender,
        required this.receiver,
        required this.items,
    });

    int id;
    String orderNo;
    DateTime orderDate;
    dynamic deliveryDate;
    String name;
    String addr1;
    dynamic addr2;
    dynamic addr3;
    int orderStatus;
    String zipcode;
    String city;
    String stateOrRegion;
    String orderTotal;
    String orderWeight;
    int channelType;
    int channelId;
    Receiver sender;
    Receiver receiver;
    List<Item> items;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        orderNo: json["order_no"],
        orderDate: DateTime.parse(json["order_date"]),
         deliveryDate: json["delivery_date"],
        name: json["name"],
        addr1: json["addr1"],
        addr2: json["addr2"],
        addr3: json["addr3"],
        orderStatus: json["order_status"],
        zipcode: json["zipcode"],
        city: json["city"],
        stateOrRegion: json["state_or_region"],
        orderTotal: json["order_total"],
        orderWeight: json["order_weight"],
        channelType: json["channel_type"],
        channelId: json["channel_id"],
        sender: Receiver.fromJson(json["receiver"]),
        receiver: Receiver.fromJson(json["receiver"]),
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "order_no": orderNo,
        "order_date": "${orderDate.year.toString().padLeft(4, '0')}-${orderDate.month.toString().padLeft(2, '0')}-${orderDate.day.toString().padLeft(2, '0')}",
        "delivery_date": deliveryDate,
        "name": name,
        "addr1": addr1,
        "addr2": addr2,
        "addr3": addr3,
        "order_status": orderStatus,
        "zipcode": zipcode,
        "city": city,
        "state_or_region": stateOrRegion,
        "order_total": orderTotal,
        "order_weight":orderWeight,
        "channel_type": channelType,
        "channel_id": channelId,
        "sender":  receiver.toJson(),
        "receiver": receiver.toJson(),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Item {
    Item({
        required this.id,
        required this.name,
        required this.sku,
        required this.price,
        required this.qty,
        required this.subTotal,
        required this.total,
    });

    int id;
    String name;
    String sku;
    String price;
    int qty;
    int subTotal;
    int total;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        sku: json["sku"],
        price: json["price"],
        qty: json["qty"],
        subTotal: json["sub_total"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sku": sku,
        "price": price,
        "qty": qty,
        "sub_total": subTotal,
        "total": total,
    };
}

class Receiver {
    Receiver({
        required this.id,
        required this.name,
        required this.email,
        required this.companyLegalName,
        required this.addressLine1,
        required this.addressLine2,
        required this.addressLine3,
        required this.city,
        required this.county,
        required this.district,
        required this.stateOrRegion,
        required this.municipality,
        required this.postalCode,
        required this.countryCode,
        required this.phone,
        required this.addressType,
        required this.taxingRegion,
        required this.longitude,
        required this.latitude,
    });

    int id;
    String name;
    String email;
    dynamic companyLegalName;
    String addressLine1;
    String addressLine2;
    dynamic addressLine3;
    String city;
    dynamic county;
    dynamic district;
    String stateOrRegion;
    dynamic municipality;
    String postalCode;
    String countryCode;
    String phone;
    dynamic addressType;
    dynamic taxingRegion;
    dynamic longitude;
    dynamic latitude;

    factory Receiver.fromJson(Map<String, dynamic> json) => Receiver(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        companyLegalName: json["company_legal_name"],
        addressLine1: json["address_line1"],
        addressLine2: json["address_line2"],
        addressLine3: json["address_line3"],
        city: json["city"],
        county: json["county"],
        district: json["district"],
        stateOrRegion: json["state_or_region"],
        municipality: json["municipality"],
        postalCode: json["postal_code"],
        countryCode: json["country_code"],
        phone: json["phone"],
        addressType: json["address_type"],
        taxingRegion: json["taxing_region"],
        longitude: json["longitude"],
        latitude: json["latitude"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "company_legal_name": companyLegalName,
        "address_line1": addressLine1,
        "address_line2": addressLine2,
        "address_line3": addressLine3,
        "city": city,
        "county": county,
        "district": district,
        "state_or_region": stateOrRegion,
        "municipality": municipality,
        "postal_code": postalCode,
        "country_code": countryCode,
        "phone": phone,
        "address_type": addressType,
        "taxing_region": taxingRegion,
        "longitude": longitude,
        "latitude": latitude,
    };
}

class Links {
    Links({
        required this.first,
        required this.last,
        required this.prev,
        required this.next,
    });

    String first;
    String last;
    dynamic prev;
    dynamic next;

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
    );

    Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
    };
}

class Meta {
    Meta({
        required this.currentPage,
        required this.from,
        required this.lastPage,
        required this.links,
        required this.path,
        required this.perPage,
        required this.to,
        required this.total,
    });

    int currentPage;
    int from;
    int lastPage;
    List<Link> links;
    String path;
    String perPage;
    int to;
    int total;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
    };
}

class Link {
    Link({
        required this.url,
        required this.label,
        required this.active,
    });

    String url;
    String label;
    bool active;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
    };
}
