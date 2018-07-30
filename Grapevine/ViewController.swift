/// Copyright (c) 2017 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private weak var iconImageView: UIImageView!
  @IBOutlet private weak var appNameLabel: UILabel!
  @IBOutlet private weak var skipButton: UIButton!
  @IBOutlet private weak var appImageView: UIImageView!
  @IBOutlet private weak var welcomeLabel: UILabel!
  @IBOutlet private weak var summaryLabel: UILabel!
  @IBOutlet private weak var pageControl: UIPageControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let views: [String: Any] = [
      "iconImageView": iconImageView,
      "appNameLabel": appNameLabel,
      "skipButton": skipButton,
      "appImageView": appImageView,
      "welcomeLabel": welcomeLabel,
      "summaryLabel": summaryLabel,
      "pageControl": pageControl]
    
    var allConstraints: [NSLayoutConstraint] = []
    
    let iconVerticalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "V:|-20-[iconImageView(30)]",
      metrics: nil,
      views: views)
    allConstraints += iconVerticalConstraints
    
    let topRowHorizontalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "H:|-15-[iconImageView(30)]-[appNameLabel]-[skipButton]-15-|",
      options: [.alignAllCenterY],
      metrics: nil,
      views: views)
    allConstraints += topRowHorizontalConstraints
    
    let summaryHorizontalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "H:|-15-[summaryLabel]-15-|",
      metrics: nil,
      views: views)
    allConstraints += summaryHorizontalConstraints
    
    let welcomeHorizontalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "H:|-15-[welcomeLabel]-15-|",
      metrics: nil,
      views: views)
    allConstraints += welcomeHorizontalConstraints
    
    let iconToImageVerticalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "V:[iconImageView]-10-[appImageView]",
      metrics: nil,
      views: views)
    allConstraints += iconToImageVerticalConstraints
    
    let imageToWelcomeVerticalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "V:[appImageView]-10-[welcomeLabel]",
      options: [.alignAllCenterX],
      metrics: nil,
      views: views)
    allConstraints += imageToWelcomeVerticalConstraints
    
    let summaryLabelVerticalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "V:[welcomeLabel]-4-[summaryLabel]",
      options: [.alignAllLeading, .alignAllTrailing],
      metrics: nil,
      views: views)
    allConstraints += summaryLabelVerticalConstraints
    
    let summaryToPageVerticalConstraints = NSLayoutConstraint.constraints(
      withVisualFormat: "V:[summaryLabel]-15-[pageControl(9)]-15-|",
      options: [.alignAllCenterX],
      metrics: nil,
      views: views)
    allConstraints += summaryToPageVerticalConstraints
    
    NSLayoutConstraint.activate(allConstraints)
  }
  
}
