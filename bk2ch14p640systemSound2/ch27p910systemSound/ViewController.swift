

import UIKit
import AudioToolbox


class ViewController: UIViewController {
    
    // test on device (doesn't work in simulator)
    
    // cool new iOS 9 way: pass the sound and the completion handler all in one call

    @IBAction func doButton (_ sender:AnyObject!) {
        let sndurl = NSBundle.main().urlForResource("test", withExtension: "aif")!
        var snd : SystemSoundID = 0
        AudioServicesCreateSystemSoundID(sndurl, &snd)
        AudioServicesPlaySystemSoundWithCompletion(snd) {
            AudioServicesDisposeSystemSoundID(snd)
            print("finished!")
        }
    }


    
}