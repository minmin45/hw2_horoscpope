//
//  ViewController.swift
//  hw2_horoscpope
//
//  Created by vv on 2019/4/17.
//  Copyright © 2019 vv. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var horoImage: SharpImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var age: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var looper: AVPlayerLooper?
    let ariesMale = ["櫻木花道", "吉良井鶴", "浦飯幽助"]
    let ariesFemale = ["木之本櫻", "夏娜", "日向花火"]
    let taurusMale = ["工藤新一", "蒙奇·D·路飛", "傑·富力士"]
    let taurusFemale = ["日暮籬", "御坂美琴", "蒂法·洛克哈特"]
    let geminiMale = ["黄濑凉太", "神威", "宇智波鼬"]
    let geminiFemale = ["綾瀨千早", "佩羅娜", "露玖"]
    let cancerMale = ["夏目贵志", "黑崎一護", "日向寧次"]
    let cancerFemale = ["娜美", "漩渦玖辛奈", "柊鏡"]
    let leoMale = ["宇智波佐助", "桃城武", "志村新八"]
    let leoFemale = ["千手綱手", "艾莎", "春風"]
    let virgoMale = ["志水桂一", "青峰大輝", "卡卡西"]
    let virgoFemale = ["波雅·漢庫克", "本間芽衣子", "井上织姬"]
    let libraMale = ["坂田银时", "旋渦鳴人", "Reborn"]
    let libraFemale = ["鮎澤美咲", "尤尼", "日奈森亞夢"]
    let scorpioMale = ["巴卫", "大蛇丸", "自來也"]
    let scorpioFemale = ["神乐", "靜音", "御手洗紅豆"]
    let sagittariusMale = ["鲁路修", "佐井", "菊丸英二"]
    let sagittariusFemale = ["庫洛姆·髑髏", "一平", "太刀川美美"]
    let capricornMale = ["利威尔", "越前龍馬", "流川楓"]
    let capricornFemale = ["日向雛田", "朽木露琪亞", "雪小路野蔷薇"]
    let aquariusMale = ["黑子哲也", "波風水門", "迪諾"]
    let aquariusFemale = ["妮可羅賓", "拉克丝·克莱茵", "真城璃茱"]
    let piscesMale = ["夜神月", "雷歐力", "不二周助"]
    let piscesFemale = ["涼宮春日", "白鬼院凜凜蝶", "桃園奈奈生"]
    
    
    @IBAction func ageSlider(_ sender: Any) {
        ageLabel.text = "\(Int(age.value))"
    }
    
    @IBAction func goButtonClicked(_ sender: Any) {
        let today = datePicker.date
        let dateFormatter = DateFormatter()
        
        //星座
        dateFormatter.dateFormat = "MM"
        let month = dateFormatter.string(from: today)
        dateFormatter.dateFormat = "dd"
        let day = dateFormatter.string(from: today)
        let index = Int.random(in: 0...2)
        let name: String = nameTextField.text!
        
        if month == "01",day >= "20" { // aquarius
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: aquariusFemale[index])
                descriptionLabel.text = "\(name)和 \(aquariusFemale[index])一樣是水瓶座"
            } else {
                horoImage.image = UIImage(named: aquariusMale[index])
                descriptionLabel.text = "\(name)和\(aquariusMale[index])一樣是水瓶座"
            }
        } else if month == "01",day <= "19"{ // capricorn
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: capricornFemale[index])
                descriptionLabel.text = "\(name)和\(capricornFemale[index])一樣是摩羯座"
            } else {
                horoImage.image = UIImage(named: capricornMale[index])
                descriptionLabel.text = "\(name)和\(capricornMale[index])一樣是摩羯座"
            }
        }
        if month == "02",day >= "19" { // pisces
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: piscesFemale[index])
                descriptionLabel.text = "\(name)和\(piscesFemale[index])一樣是雙魚座"
            } else {
                horoImage.image = UIImage(named: piscesMale[index])
                descriptionLabel.text = "\(name)和\(piscesMale[index])一樣是雙魚座"
            }
        } else if month == "02",day <= "18"{ // aquarius
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: aquariusFemale[index])
                descriptionLabel.text = "\(name)和\(aquariusFemale[index])一樣是水瓶座"
            } else {
                horoImage.image = UIImage(named: aquariusMale[index])
                descriptionLabel.text = "\(name)和\(aquariusMale[index])一樣是水瓶座"
            }
        }
        if month == "03",day >= "21" { // aries
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: ariesFemale[index])
                descriptionLabel.text = "\(name)和\(ariesFemale[index])一樣是牡羊座"
            } else {
                horoImage.image = UIImage(named: ariesMale[index])
                descriptionLabel.text = "\(name)和\(ariesMale[index])一樣是牡羊座"
            }
        } else if month == "03",day <= "20"{ // pisces
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: piscesFemale[index])
                descriptionLabel.text = "\(name)和\(piscesFemale[index])一樣是雙魚座"
            } else {
                horoImage.image = UIImage(named: piscesMale[index])
                descriptionLabel.text = "\(name)和\(piscesMale[index])一樣是雙魚座"
            }
        }
        if month == "04",day >= "20" { // taurus
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: taurusFemale[index])
                descriptionLabel.text = "\(name)和\(taurusFemale[index])一樣是金牛座"
            } else {
                horoImage.image = UIImage(named: taurusMale[index])
                descriptionLabel.text = "\(name)和\(taurusMale[index])一樣是金牛座"
            }
        } else if month == "04",day <= "19"{ // aries
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: ariesFemale[index])
                descriptionLabel.text = "\(name)和\(ariesFemale[index])一樣是牡羊座"
            } else {
                horoImage.image = UIImage(named: ariesMale[index])
                descriptionLabel.text = "\(name)和\(ariesMale[index])一樣是牡羊座"
            }
        }
        if month == "05",day >= "21" { // gemini
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: geminiFemale[index])
                descriptionLabel.text = "\(name)和\(geminiFemale[index])一樣是雙子座"
            } else {
                horoImage.image = UIImage(named: geminiMale[index])
                descriptionLabel.text = "\(name)和\(geminiMale[index])一樣是雙子座"
            }
        } else if month == "05",day <= "20"{ // taurus
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: taurusFemale[index])
                descriptionLabel.text = "\(name)和\(taurusFemale[index])一樣是金牛座"
            } else {
                horoImage.image = UIImage(named: taurusMale[index])
                descriptionLabel.text = "\(name)和\(taurusMale[index])一樣是金牛座"
            }
        }
        if month == "06",day >= "21" { // cancer
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: cancerFemale[index])
                descriptionLabel.text = "\(name)和\(cancerFemale[index])一樣是巨蟹座"
            } else {
                horoImage.image = UIImage(named: cancerMale[index])
                descriptionLabel.text = "\(name)和\(cancerMale[index])一樣是巨蟹座"
            }
        } else if month == "06",day <= "20"{ // gemini
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                horoImage.image = UIImage(named: geminiFemale[index])
                descriptionLabel.text = "\(name)和\(geminiFemale[index])一樣是雙子座"
            } else {
                horoImage.image = UIImage(named: geminiMale[index])
                descriptionLabel.text = "\(name)和\(geminiMale[index])一樣是雙子座"
            }
            if month == "07",day >= "23" { // leo
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: leoFemale[index])
                    descriptionLabel.text = "\(name)和\(leoFemale[index])一樣是獅子座"
                } else {
                    horoImage.image = UIImage(named: leoMale[index])
                    descriptionLabel.text = "\(name)和\(leoMale[index])一樣是獅子座"
                }
            } else if month == "07",day <= "22"{ // cancer
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: cancerFemale[index])
                    descriptionLabel.text = "\(name)和\(cancerFemale[index])一樣是巨蟹座"
                } else {
                    horoImage.image = UIImage(named: cancerMale[index])
                    descriptionLabel.text = "\(name)和\(cancerMale[index])一樣是巨蟹座"
                }
            }
            if month == "08",day >= "23" { // virgo
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: virgoFemale[index])
                    descriptionLabel.text = "\(name)和\(virgoFemale[index])一樣是處女座"
                } else {
                    horoImage.image = UIImage(named: virgoMale[index])
                    descriptionLabel.text = "\(name)和\(virgoMale[index])一樣是處女座"
                }
            } else if month == "08",day <= "22"{ // leo
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: leoFemale[index])
                    descriptionLabel.text = "\(name)和\(leoFemale[index])一樣是獅子座"
                } else {
                    horoImage.image = UIImage(named: leoMale[index])
                    descriptionLabel.text = "\(name)和\(leoMale[index])一樣是獅子座"
                }
            }
            if month == "09",day >= "23" { // libra
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: libraFemale[index])
                    descriptionLabel.text = "\(name)和\(libraFemale[index])一樣是天秤座"
                } else {
                    horoImage.image = UIImage(named: libraMale[index])
                    descriptionLabel.text = "\(name)和\(libraMale[index])一樣是天秤座"
                }
            } else if month == "09",day <= "22"{ // virgo
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: virgoFemale[index])
                    descriptionLabel.text = "\(name)和\(virgoFemale[index])一樣是處女座"
                } else {
                    horoImage.image = UIImage(named: virgoMale[index])
                    descriptionLabel.text = "\(name)和\(virgoMale[index])一樣是處女座"
                }
            }
            if month == "10",day >= "23" { // scorpio
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: scorpioFemale[index])
                    descriptionLabel.text = "\(name)和\(scorpioFemale[index])一樣是天蠍座"
                } else {
                    horoImage.image = UIImage(named: scorpioMale[index])
                    descriptionLabel.text = "\(name)和\(scorpioMale[index])一樣是天蠍座"
                }
            } else if month == "10",day <= "22"{ // libra
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: libraFemale[index])
                    descriptionLabel.text = "\(name)和\(libraFemale[index])一樣是天秤座"
                } else {
                    horoImage.image = UIImage(named: libraMale[index])
                    descriptionLabel.text = "\(name)和\(libraMale[index])一樣是天秤座"
                }
            }
            if month == "11",day >= "22" { // sagittarius
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: sagittariusFemale[index])
                    descriptionLabel.text = "\(name)和\(sagittariusFemale[index])一樣是射手座"
                } else {
                    horoImage.image = UIImage(named: sagittariusMale[index])
                    descriptionLabel.text = "\(name)和\(sagittariusMale[index])一樣是射手座"
                }
            } else if month == "11",day <= "21"{ // scorpio
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: scorpioFemale[index])
                    descriptionLabel.text = "\(name)和\(scorpioFemale[index])一樣是天蠍座"
                } else {
                    horoImage.image = UIImage(named: scorpioMale[index])
                    descriptionLabel.text = "\(name)和\(scorpioMale[index])一樣是天蠍座"
                }
            }
            if month == "12",day >= "22" { //capricorn
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: capricornFemale[index])
                    descriptionLabel.text = "\(name)和\(capricornFemale[index])一樣是摩羯座"
                } else {
                    horoImage.image = UIImage(named: capricornMale[index])
                    descriptionLabel.text = "\(name)和\(capricornMale[index])一樣是摩羯座"
                }
            } else if month == "12",day <= "21"{ //sagittarius
                if genderSegmentedControl.selectedSegmentIndex == 0 {
                    horoImage.image = UIImage(named: sagittariusFemale[index])
                    descriptionLabel.text = "\(name)和\(sagittariusFemale[index])一樣是射手座"
                } else {
                    horoImage.image = UIImage(named: sagittariusMale[index])
                    descriptionLabel.text = "\(name)和\(sagittariusMale[index])一樣是射手座"
                }
            }
            
        }
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    let player = AVQueuePlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 227/255, green: 143/255, blue: 195/255, alpha: 0.1).cgColor, UIColor(red: 230/255, green: 78/255, blue: 172/255, alpha: 0.5).cgColor]
        self.view.layer.addSublayer(gradientLayer)
        
        if let url = URL(string: "http://67.159.62.2/ost/ragnarok-online-original-soundtrack/fygltzmy/108%20theme%20of%20prontera.mp3") {
            let item = AVPlayerItem(url: url)
            looper = AVPlayerLooper(player: player, templateItem: item)
            player.play()
        }
    }
    @IBAction func bgmSwitchAction(_ sender: UISwitch) {
        if sender.isOn == true {
            player.play()
        } else {
            player.pause()
        }
    }
    

}


