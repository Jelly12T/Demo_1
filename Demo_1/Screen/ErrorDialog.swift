//
//  CustomView.swift
//  Demo_1
//
//  Created by lê thạch on 29/01/2024.
//

import UIKit
class ErrorDialog: UIView {
    // design
    var contentView: UIView!
    var xImageView: UIImageView!
    var thumbnailImageView: UIImageView!
    var titleLabel: UILabel!
    var detailLabel: UILabel!

    //MARK: Init
    // hàm nay nó sẽ được chạy vào khi em gọi cái view này bằng code
    override init(frame: CGRect) {
        super.init(frame: frame)

        print("JELLY: 1")
        self.config()
    }

    // hàm nay nó sẽ được chạy vào khi em gọi cái view này bằng file xib
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        print("JELLY: 2")
        self.config()
    }

    func config() {
        self.configCommonUI()
        self.configContentView()
        self.configXImageView()
        self.configThumnailImageView()
        self.configTitleLabel()
        self.configDetailabel()
    }

    func configCommonUI() {
        self.backgroundColor = .black.withAlphaComponent(0.4)
    }

    func configContentView() {
        self.contentView = UIView() // khởi tạo contentView
        self.contentView.backgroundColor = UIColor(rgb: 0xF5F5F5)
        self.contentView.layer.cornerRadius = 15
        // tắt layout tự động khi khởi tạo trong swfit
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.contentView) // add Contetnview vào view cha

        NSLayoutConstraint.activate([
            self.contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }

    func configXImageView() {
        self.xImageView = UIImageView()
        let xImage = UIImage(named: "ic_x")
        self.xImageView.image = xImage
        self.xImageView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.xImageView)

        NSLayoutConstraint.activate([
            self.xImageView.widthAnchor.constraint(equalToConstant: 19),
            self.xImageView.heightAnchor.constraint(equalTo: self.xImageView.widthAnchor),
            self.xImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 13),
            self.xImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -13),
        ])
    }

    func configThumnailImageView() {
        self.thumbnailImageView = UIImageView()
        let errorImage = UIImage(named: "ic_error")
        self.thumbnailImageView.image = errorImage
        self.thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.thumbnailImageView)

        NSLayoutConstraint.activate([
            self.thumbnailImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.thumbnailImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant:  27),
            self.thumbnailImageView.widthAnchor.constraint(equalToConstant: 72),
            self.thumbnailImageView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    func configTitleLabel() {
        self.titleLabel = UILabel()
        self.titleLabel.text = "Video Export Failed"
        self.titleLabel.font = UIFont(name: "HankenGrotesk-Bold", size: 20)
        self.titleLabel.textColor = .black
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.titleLabel)

        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.thumbnailImageView.bottomAnchor, constant: 5),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor)
        ])
    }

    func configDetailabel() {
        self.detailLabel = UILabel()
        self.detailLabel.text = "An error occurred while\n exporting your video\n. An error occurred while\n  exporting your video\n. An error occurred while\n"
        self.detailLabel.numberOfLines = 0
        self.detailLabel.textAlignment = .center
        self.detailLabel.font = UIFont(name: "HankenGrotesk-Medium", size: 14)
        self.detailLabel.textColor = .black
        self.detailLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.detailLabel)

        NSLayoutConstraint.activate([
            self.detailLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 27),
            self.detailLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
            self.detailLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.detailLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -45)
        ])
    }
}
