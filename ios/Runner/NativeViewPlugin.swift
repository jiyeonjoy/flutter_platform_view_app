//
//  NativeViewPlugin.swift
//  Runner
//
//  Created by Jiyeon Choi on 2022/11/12.
//

import Flutter
import UIKit

class NativeViewPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let nativeViewFactory = NativeViewFactory(messenger: registrar.messenger())
        registrar.register(nativeViewFactory, withId: "plugin/native_widget")
    }
}
