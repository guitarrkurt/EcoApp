//
//  SecondViewController.swift
//  ParqueEcologico
//
//  Created by guitarrkurt on 28/01/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit


class PerfilViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    // MARK: - Propertys
    @IBOutlet weak var fotoPerfil: UIButton!
    @IBOutlet weak var fondoPerfil: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView? = nil
    
    var noLabel = Int()
    var algo = String()
    let array = ["1-Escalada", "2-Tirolesa", "3-Natacion", "4-Gimnasia", "5-Ciclismo", "6-Palapas", "7-Aviario", "8-Basquet", "9-Atletismo", "10-Futbol"]
    
    let imagePicker = UIImagePickerController()
    
    // MARK: - Constructor
    override func viewDidLoad() {
        super.viewDidLoad()
//        /*Vista Navigation Bar*/
//        let topNB = UIImage(named: "navigationBar.png")// 1 Agregamos el logo de la suprema en el top navigation bar
//        let topNBView = UIImageView(image: topNB)// 2 Agregamos el logo de la suprema en el top navigation bar
//        self.navigationController?.navigationBar.topItem?.titleView = topNBView// 3 Agregamos el logo de la suprema en el top navigation bar
//        self.automaticallyAdjustsScrollViewInsets = false

        //Poner la imagen redonda y con borde
        fotoPerfil.layer.borderWidth=5.0
        fotoPerfil.layer.masksToBounds = false
//        fotoPerfil.layer.borderColor = UIColor.brownColor().CGColor
        //fotoPerfil.layer.borderColor = UIColor(patternImage: UIImage(named: "blueColor")!).CGColor
        fotoPerfil.layer.borderColor = UIColor.whiteColor().CGColor
        fotoPerfil.layer.cornerRadius = fotoPerfil.frame.size.height/2
        fotoPerfil.clipsToBounds = true
        
        self.fotoPerfil.addTarget(self, action: "cambiarFotoPerfil:", forControlEvents: .TouchUpInside)
        self.imagePicker.delegate = self

        
    }
    // MARK: - CollectionView DataSource Methods
    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return array.count
    }
    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PerfilIdentifier", forIndexPath: indexPath) as! PerfilCollectionViewCell
        
        //cell.boton.setImage(UIImage(named: array[indexPath.item]), forState: .Normal)
        cell.figura.image = UIImage(named: array[indexPath.item])
        cell.label.text = array[indexPath.item]

        return cell
    }
    /*Las Celdas ocupen la mitad de la pantalla*/
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        //Si esta en Portrair
        if(UIDevice.currentDevice().orientation.isLandscape.boolValue){
            return CGSize(width: self.collectionView!.bounds.width/3, height: self.collectionView!.bounds.width/3 );
        }else{
            return CGSize(width: collectionView.bounds.width/2, height: collectionView.bounds.width/2);
        }
    }
    // MARK: - Portrait or Landscape
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)

        if collectionView != nil{
            collectionView!.reloadData()
        }
    }
    
    func cambiarFotoPerfil(sender:UIButton!){
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    // MARK: - UIImagePickerControllerDelegate Methods
    internal func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            fotoPerfil.contentMode = .ScaleAspectFill
            fotoPerfil.setImage(pickedImage, forState: .Normal)
            //fotoPerfil.setBackgroundImage(pickedImage, forState: .Normal)
            
            //Blur
            
            fondoPerfil.image = UIImage(named: "degradado-azul")
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = fondoPerfil.bounds
            blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight] // for supporting device rotation

            
            fondoPerfil.addSubview(blurEffectView)

            
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    internal func imagePickerControllerDidCancel(picker: UIImagePickerController){
        dismissViewControllerAnimated(true, completion: nil)
    }
    // MARK: - CollectionView Protocol
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        noLabel = indexPath.item
        print("\(noLabel)")
        performSegueWithIdentifier("ActivityIdentifier", sender: self)
    }
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ActivityIdentifier" {
//            let compravc = segue.destinationViewController as! ActivityViewController
//                compravc.noLabel = noLabel
////                        //compravc.esclavo = self
            
            
        }
    }
}

