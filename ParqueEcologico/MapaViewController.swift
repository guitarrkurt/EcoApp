//
//  FirstViewController.swift
//  ParqueEcologico
//
//  Created by guitarrkurt on 28/01/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var iv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        /*Vista Navigation Bar*/
//        let topNB = UIImage(named: "navigationBar.png")// 1 Agregamos el logo de la suprema en el top navigation bar
//        let topNBView = UIImageView(image: topNB)// 2 Agregamos el logo de la suprema en el top navigation bar
//        self.navigationController?.navigationBar.topItem?.titleView = topNBView// 3 Agregamos el logo de la suprema en el top navigation bar
        
//        scrollView.contentSize.height = 1100
//        scrollView.contentSize.width = 1100
        let image = UIImage(named: "Mapa-general")
        //        let image = UIImage(named: "paisaje.jpg")
         iv = UIImageView(image: image)
        scrollView.addSubview(iv)
        
        scrollView.contentSize = iv.bounds.size
        scrollView.delegate = self
        
        scrollView.minimumZoomScale = 0.5
        scrollView.maximumZoomScale = 2.0
        
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        
//        let rect = CGRect(x: 0, y: 0, width: iv.bounds.width, height: iv.bounds.height)
//        scrollView.scrollRectToVisible(rect, animated: true)
        

        uno()
        dos()
        tres()
        cuatro()
        cinco()
        seis()
        siete()
        ocho()
        nueve()
        diez()
        
        


    }
    
    func Algo(sender:UIButton!){
        print("algo")
        
        performSegueWithIdentifier("DetailMapaIdentifier", sender: self)
    }

//    optional public func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
//        
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
//        return iv
//    }
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailMapaIdentifier" {
//            let compravc = segue.destinationViewController as! CompraViewController
//            compravc.arrayCompra = arrayCompra
//            compravc.esclavo = self
            
            
        }
    }
    
    // MARK: - Portrait or Landscape
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
        //Es Landscape
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            print("Landscape...")

        } else {
            //Es Portrait
            print("Portrait...")

        }
    }
    
    func uno(){
        let buttonUno   = UIButton(type: UIButtonType.System) as UIButton
        buttonUno.frame = CGRectMake(630, 390, 82, 115)
        buttonUno.backgroundColor = UIColor(patternImage: UIImage(named: "uno")!)
        buttonUno.setTitle("", forState: UIControlState.Normal)
        buttonUno.addTarget(self, action: "unoAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(buttonUno)
    }

    func dos(){
        let buttonDos   = UIButton(type: UIButtonType.System) as UIButton
        buttonDos.frame = CGRectMake(580, 530, 251, 139)
        buttonDos.backgroundColor = UIColor(patternImage: UIImage(named: "dos")!)
        buttonDos.setTitle("", forState: UIControlState.Normal)
        buttonDos.addTarget(self, action: "dosAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(buttonDos)
    }

    func tres(){
        let tresButton   = UIButton(type: UIButtonType.System) as UIButton
        tresButton.frame = CGRectMake(535, 725, 44, 40)
        tresButton.backgroundColor = UIColor(patternImage: UIImage(named: "tres")!)
        tresButton.setTitle("", forState: UIControlState.Normal)
        tresButton.addTarget(self, action: "tresAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(tresButton)
    }

    func cuatro(){
        let cuatroButton   = UIButton(type: UIButtonType.System) as UIButton
        cuatroButton.frame = CGRectMake(473, 755, 32, 41)
        cuatroButton.backgroundColor = UIColor(patternImage: UIImage(named: "cuatro")!)
        cuatroButton.setTitle("", forState: UIControlState.Normal)
        cuatroButton.addTarget(self, action: "cuatroAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(cuatroButton)
    }

    func cinco(){
        let cincoButton   = UIButton(type: UIButtonType.System) as UIButton
        cincoButton.frame = CGRectMake(560, 820, 109, 83)
        cincoButton.backgroundColor = UIColor(patternImage: UIImage(named: "cinco")!)
        cincoButton.setTitle("", forState: UIControlState.Normal)
        cincoButton.addTarget(self, action: "cincoAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(cincoButton)
    }

    func seis(){
        let seisButton   = UIButton(type: UIButtonType.System) as UIButton
        seisButton.frame = CGRectMake(420, 830, 51, 41)
        seisButton.backgroundColor = UIColor(patternImage: UIImage(named: "seis")!)
        seisButton.setTitle("", forState: UIControlState.Normal)
        seisButton.addTarget(self, action: "seisAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(seisButton)
    }

    func siete(){
        let sieteButton   = UIButton(type: UIButtonType.System) as UIButton
        sieteButton.frame = CGRectMake(360, 1180, 85, 70)
        sieteButton.backgroundColor = UIColor(patternImage: UIImage(named: "siete")!)
        sieteButton.setTitle("", forState: UIControlState.Normal)
        sieteButton.addTarget(self, action: "sieteAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(sieteButton)
    }

    func ocho(){
        let ochoButton   = UIButton(type: UIButtonType.System) as UIButton
        ochoButton.frame = CGRectMake(910, 195, 221, 218)
        ochoButton.backgroundColor = UIColor(patternImage: UIImage(named: "ocho")!)
        ochoButton.setTitle("", forState: UIControlState.Normal)
        ochoButton.addTarget(self, action: "ochoAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(ochoButton)
    }

    func nueve(){
        let nueveButton   = UIButton(type: UIButtonType.System) as UIButton
        nueveButton.frame = CGRectMake(807, 105, 109, 102)
        nueveButton.backgroundColor = UIColor(patternImage: UIImage(named: "nueve")!)
        nueveButton.setTitle("", forState: UIControlState.Normal)
        nueveButton.addTarget(self, action: "nueveAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(nueveButton)
    }

    func diez(){
        let diezButton   = UIButton(type: UIButtonType.System) as UIButton
        diezButton.frame = CGRectMake(945, 67, 115, 71)
        diezButton.backgroundColor = UIColor(patternImage: UIImage(named: "diez")!)
        diezButton.setTitle("", forState: UIControlState.Normal)
        diezButton.addTarget(self, action: "diezAction:", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(diezButton)
    }
    
    func unoAction(sender:UIButton!){
        print("uno action")

    }
    func dosAction(sender:UIButton!){
                print("dos action")
    performSegueWithIdentifier("TirolesaIdentifier", sender: self)
    }
    func tresAction(sender:UIButton!){
                print("tres action")
    }
    func cuatroAction(sender:UIButton!){
              print("cuatro action")
        print("siete action aviario")
        performSegueWithIdentifier("DetailMapaIdentifier", sender: self)
    }
    func cincoAction(sender:UIButton!){
                print("cinco action")
    }
    func seisAction(sender:UIButton!){
              print("seis action")
    }
    func sieteAction(sender:UIButton!){

        
    }
    func ochoAction(sender:UIButton!){
                print("ocho action")
    }
    func nueveAction(sender:UIButton!){
                print("nueve action")
    }
    func diezAction(sender:UIButton!){
               print("diez action")
    }
    
    @IBAction func zoomUno(sender: UIButton) {

    }
    @IBAction func zoomDos(sender: UIButton) {
    }
    @IBAction func zooTres(sender: UIButton) {
    }
    @IBAction func zoomCuatro(sender: UIButton) {
    }
    
    @IBAction func zoomCinco(sender: UIButton) {
    }
    
    @IBAction func zoomSeis(sender: UIButton) {
    }
    
    @IBAction func zoomSiete(sender: UIButton) {
        let rect = CGRect(x: 115, y: 1000, width: 255, height: 571)
        
        scrollView.scrollRectToVisible(rect, animated: true)
    }
    
    @IBAction func zoomOcho(sender: UIButton) {
        let rect = CGRect(x: 0, y: 0, width: 2000, height: 50)
        
        scrollView.scrollRectToVisible(rect, animated: true)
    }
    
    @IBAction func zoomNueve(sender: UIButton) {
        let rect = CGRect(x: 0, y: 0, width: 2000, height: 50)
        
        scrollView.scrollRectToVisible(rect, animated: true)
    }
    @IBAction func zoomDiez(sender: UIButton) {
        let rect = CGRect(x: 0, y: 0, width: 4000, height: -800)
        
        scrollView.scrollRectToVisible(rect, animated: true)


    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

