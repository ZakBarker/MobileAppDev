//
//  SceneDelegate.swift
//  Referencer
//
//  Created by Zak Barker on 9/3/20.
//  Copyright © 2020 Zak Barker. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    // Create Instance of the Class WaveList, this will store an array of Class Wave.
    let waveList = WaveList()
    
    // Initialize Wave instances to be appended to waveList
    
    let wave = Wave(name: "Teahupo'o", country: "Tahiti", type: "Reef Break", left: "One of the best slabs in the world", right: "Death", image: "teahupoo")
    let wave1 = Wave(name: "Nazare", country: "Portugal", type: "Big Wave", left: "Left or right, you will die", right: "Yes, good luck", image: "nazare")
    let wave2 = Wave(name: "Skeleton Bay", country: "Namibia", type: "Left Point Break", left: "Runs for days", right: "There is no right", image: "skeletonbay")
    let wave3 = Wave(name: "Snapper Rocks", country: "Australia", type: "Right Point Break", left: "This wave peels right", right: "World Class When it's pumping", image: "snapper")
    let wave4 = Wave(name: "The Wedge", country: "The States", type: "Monstrous Shorie", left: "This left is a insane", right: "The right is possible to make...?", image: "wedge")
    let wave5 = Wave(name: "Cape Fear", country: "Australia", type: "Big Wave", left: "Not an Option", right: "The Mutant pushes off a right hand point", image: "fear")

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // Append Wave Instances to waveList
        
        waveList.addWave(wave: wave)
        waveList.addWave(wave: wave1)
        waveList.addWave(wave: wave2)
        waveList.addWave(wave: wave3)
        waveList.addWave(wave: wave4)
        waveList.addWave(wave: wave5)


        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView(waveList: waveList)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


struct SceneDelegate_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
