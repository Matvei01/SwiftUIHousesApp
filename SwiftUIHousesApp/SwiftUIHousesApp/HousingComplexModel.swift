//
//  HousingComplexModel.swift
//  SwiftUIHousesApp
//
//  Created by Matvei Khlestov on 02.08.2024.
//

import Foundation

struct HousingComplexModel: Identifiable {
    let id = UUID()
    
    let image: String
    let name: String
    let price: String
    let address: String
    let roomTypes: [RoomType]
    
    static func getHousingComplexes() -> [HousingComplexModel] {
        [
            HousingComplexModel(
                image: "Houses1",
                name: "Ольховый Квартал",
                price: "от 8 029 445 ₽",
                address: "Москва, поселение Сосенское, деревня Столбово",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses2",
                name: "Новое Видное",
                price: "от 4 735 485 ₽",
                address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses3",
                name: "Ольховый Квартал",
                price: "от 8 029 445 ₽",
                address: "Москва, поселение Сосенское, деревня Столбово",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses4",
                name: "Новое Видное",
                price: "от 4 735 485 ₽",
                address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses5",
                name: "Ольховый Квартал",
                price: "от 8 029 445 ₽",
                address: "Москва, поселение Сосенское, деревня Столбово",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses6",
                name: "Новое Видное",
                price: "от 4 735 485 ₽",
                address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses7",
                name: "Ольховый Квартал",
                price: "от 8 029 445 ₽",
                address: "Москва, поселение Сосенское, деревня Столбово",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses8",
                name: "Новое Видное",
                price: "от 4 735 485 ₽",
                address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses9",
                name: "Ольховый Квартал",
                price: "от 8 029 445 ₽",
                address: "Москва, поселение Сосенское, деревня Столбово",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            ),
            HousingComplexModel(
                image: "Houses10",
                name: "Новое Видное",
                price: "от 4 735 485 ₽",
                address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                roomTypes: [
                    RoomType(numberOfRooms: "Студия", price: "от 8 млн ₽"),
                    RoomType(numberOfRooms: "1-комн.", price: "от 10 млн ₽"),
                    RoomType(numberOfRooms: "2-комн.", price: "от 20 млн ₽")
                ]
            )
        ]
    }
}

struct RoomType {
    let numberOfRooms: String
    let price: String
}
