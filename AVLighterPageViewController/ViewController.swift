//
//  ViewController.swift
//  AVLighterPageViewController
//
//  Created by Angel Vasa on 13/01/16.
//  Copyright © 2016 Angel Vasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pageController: AVPageViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc: AVPageContentViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageContentViewController") as! AVPageContentViewController
        let vc1: AVPageContentViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageContentViewController") as! AVPageContentViewController
        let vc2: AVPageContentViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageContentViewController") as! AVPageContentViewController
        let margin: CGFloat = 20.0
        self.setPageController()
        self.pageController?.setupControllers([vc, vc1, vc2], viewControllerFrameRect: CGRectMake(margin, margin, self.view.frame.size.width - 2 * margin, self.view.frame.size.height - 100), withPresentingViewControllerIndex: 0)
        self.addChildViewController(self.pageController!)
        self.view.addSubview(self.pageController!.view)
        self.pageController!.didMoveToParentViewController(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    func setPageController() {
        for view in (self.pageController?.view.subviews)! {
            if (view .isKindOfClass(UIPageControl)) {
                let p:UIPageControl = view as! UIPageControl
                p.pageIndicatorTintColor = UIColor.redColor()
                p.backgroundColor = UIColor.blackColor()
            }
        }
    }

}

