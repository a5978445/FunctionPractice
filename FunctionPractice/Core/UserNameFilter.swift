//
//  UserNameFilter.swift
//  FunctionPractice
//
//  Created by 李腾芳 on 2018/9/11.
//  Copyright © 2018年 Mobile Foudation Team. All rights reserved.
//

import UIKit

struct UserNameFilter {
    struct TraditionalStyle {
        static func filterUserName(_ users: [String]) -> String {
            var result = ""

            for userName in users {
                if userName.count > 1 {
                    result += "\(userName.capitalized),"
                }
            }

            return String(result.dropLast())
        }
    }

    struct FunctionStyle {
        static func filterUserName(_ users: [String]) -> String {
            let result = users.filter { $0.count > 1 }
                .map { $0.capitalized }
                .reduce("") { $0 + $1 + "," }

            return String(result.dropLast())
        }
    }
}
