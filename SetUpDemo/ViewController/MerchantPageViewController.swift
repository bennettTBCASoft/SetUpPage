//
//  MerchantPageViewController.swift
//  SetUpDemo
//
//  Created by TBCASoft-Bennett on 2022/2/17.
//

import UIKit

class MerchantPageViewController: UIViewController {

    
    
    @IBAction func switchUserModeBtn(_ sender: Any) {
//        // 切換到UserViewController
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "User") as! UserPageViewController
//
//        vc.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
//        vc.modalPresentationStyle = .fullScreen
//
//        self.present(vc, animated: true, completion: nil)
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
