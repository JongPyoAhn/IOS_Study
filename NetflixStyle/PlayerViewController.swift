//
//  PlayerViewController.swift
//  NetflixStyle
//
//  Created by 안종표 on 2021/07/14.
//


import UIKit
import AVFoundation
class PlayerViewController: UIViewController {

    @IBOutlet weak var PlayerView: PlayerView!
    @IBOutlet weak var controlView: UIView!
    @IBOutlet weak var playButton: UIButton!
    
    let player = AVPlayer()
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PlayerView.player = player
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        play()
    }
    @IBAction func togglePlayButton(_ sender: Any) {
        if player.isPlaying{
            pause()
        }else {
            play()
        }
        
        playButton.isSelected = !playButton.isSelected
    }
    
    func play() {
        player.play()
        playButton.isSelected = true
    }
    func pause() {
        player.pause()
        playButton.isSelected = false
    }
    func reset(){
        pause()
        player.replaceCurrentItem(with: nil)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        reset()
        dismiss(animated: false, completion: nil)
    }
}
// 현재 플레이가 진행중인지..
extension AVPlayer {
    var isPlaying: Bool {
        guard self.currentItem != nil else { return false }
        return self.rate != 0
    }
}
