//
//  PeopleTableViewCell.swift
//  StaffsDirectory
//
//  Created by MAC on 11/02/22.
//
import Foundation
import UIKit

class PeopleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupURLImage(imageURL:String) {
        ImageDownloader.shared.getImage(url: imageURL) { [weak self] data in
            DispatchQueue.main.async {
                self?.imageAvatar.image = UIImage(data: data)
            }
        }
    }
    
    override func prepareForReuse() {
        imageAvatar.image = nil
        firstNameLabel.text = ""
        jobTitle.text = ""
    }
    
    func setData(staff: People) {
        firstNameLabel.text = staff.firstName + staff.lastName
        jobTitle.text = staff.jobTitle
        emailLabel.text = staff.email
        setupURLImage(imageURL: staff.avatar)
    }
}
