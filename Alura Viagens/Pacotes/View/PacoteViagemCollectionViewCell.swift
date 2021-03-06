//
//  PacoteViagemCollectionViewCell.swift
//  Alura Viagens
//
//  Created by Dynara Rico Oliveira on 10/12/17.
//  Copyright © 2017 Dynara Rico Oliveira. All rights reserved.
//

import UIKit

class PacoteViagemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    
    func formataCelula(pacote:PacoteViagem){
        self.labelTitulo.text = pacote.viagem.titulo
        self.labelQuantidadeDias.text = pacote.viagem.quantidadeDeDias == 1 ? "1 dia" : "\(pacote.viagem.quantidadeDeDias) dias"
        self.labelPreco.text = pacote.viagem.preco
        self.imagemViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
        
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.init(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        self.layer.cornerRadius = 8
    }
}
