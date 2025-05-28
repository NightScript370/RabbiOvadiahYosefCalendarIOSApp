//
//  SetupChooserViewController.swift
//  Rabbi Ovadiah Yosef Calendar
//
//  Created by Elyahu Jacobi on 8/15/23.
//

import UIKit

class SetupChooserViewController: UIViewController {

    @IBOutlet weak var info: UIButton!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var simpleSetup: UIButton!
    @IBOutlet weak var advancedSetup: UIButton!
    
    @IBAction func back(_ sender: UIButton) {
        super.dismiss(animated: true)
    }
    
    @IBAction func info(_ sender: UIButton) {
        var message: String
        if Locale.isHebrewLocale() {
            message = "ישנם שני אפשרויות להוריד את זמני זריחה הנראים עבור המיקום שלך.\n\nלחיצה על כפתור \"התקן את העיר שלך!\" תקח אותך לדף שישאל אותך לבחור את העיר/האזור שלך.\n\nפעם שבחרת את העיר שלך, הוא יוריד טבלה המפרטת את הזמנים לזריחה הנראית לעתיד הקרוב במשך שנתיים מהאתר ChaiTables.com. האפשרות \"התקנה מתקדמת\" מאפשרת לך לבחור האם ברצונך לספק את כתובת ה-URL שלך לאתר ה-ChaiTables,\n\nאו לנווט באתר בעצמך. ידוע שנתוני זריחה הנראים משתנים עבור כל עיר ועיר, ותצטרך להגדיר מחדש את נתוני הזריחה הנראים של העיר שלך בכל פעם שתשנה ערים."
        } else {
            message = "There are 2 options in order to download the visible sunrise times for your location.\n\n Pressing the \"Setup your city!\" button will take you to a page that will ask you to choose your city/area. Once you choose your city, it will download a table that lists the times for VISIBLE sunrise throughout the next 2 years from a website called ChaiTables.com.\n\nThe \"Advanced Setup\" option allows you to choose whether you want to supply your own URL for the chaitables website, or do navigate the website yourself.\n\nKnow that the visible sunrise data changes for each and every city and you will need to set the visible sunrise data of your city every time you change cities."
        }
        
        let alertController = UIAlertController(title: "Introduction".localized(), message: message, preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "Dismiss".localized(), style: .cancel) { (_) in }
        alertController.addAction(dismissAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func startSimpleSetup(_ sender: UIButton) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        showFullScreenView("SimpleSetup")
    }
    
    @IBAction func startAdvancedSetup(_ sender: UIButton) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        showFullScreenView("AdvancedSetup")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 15.0, *) {
            info.configuration = .filled()
            info.configuration?.background.backgroundColor = .systemBlue
            info.setTitleColor(.white, for: .normal)
            simpleSetup.setTitleColor(.black, for: .normal)
            advancedSetup.setTitleColor(.white, for: .normal)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
