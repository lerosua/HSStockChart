//
//  HSKLineStyle.swift
//  HSStockChart
//
//  Created by Hanson on 2017/10/20.
//  Copyright © 2017年 HansonStudio. All rights reserved.
//

import Foundation

public struct HSKLineStyle {
    
    var uperChartHeightScale: CGFloat = 0.7 // 70% 的空间是上部分的走势图
    
    var lineWidth: CGFloat = 1
    var frameWidth: CGFloat = 0.25
    
    var xAxisHeitht: CGFloat = 30
    var viewMinYGap: CGFloat = 15
    var volumeGap: CGFloat = 10
    
    var candleWidth: CGFloat = 5
    var candleGap: CGFloat = 2
    var candleMinHeight: CGFloat = 0.5
    var candleMaxWidth: CGFloat = 30
    var candleMinWidth: CGFloat = 2
    
    var ma5Color = UIColor.hschart.color(rgba: "#e8de85")
    var ma10Color = UIColor.hschart.color(rgba: "#6fa8bb")
    var ma20Color = UIColor.hschart.color(rgba: "#df8fc6")
    var borderColor = UIColor.hschart.color(rgba: "#e4e4e4")
    var crossLineColor = UIColor.hschart.color(rgba: "#546679")
    var textColor = UIColor.hschart.color(rgba: "#8695a6")
    var riseColor = UIColor.hschart.color(rgba: "#f24957") // 涨 red
    var fallColor = UIColor.hschart.color(rgba: "#1dbf60") // 跌 green
    var priceLineColor = UIColor.hschart.color(rgba: "#0095ff")
    var avgLineColor = UIColor.hschart.color(rgba: "#ffc004") // 均线颜色
    var fillColor = UIColor.hschart.color(rgba: "#e3efff")
    
    var baseFont = UIFont.systemFont(ofSize: 10)
    
    func getTextSize(text: String) -> CGSize {
        let size = text.size(withAttributes: [NSAttributedString.Key.font: baseFont])
        let width = ceil(size.width) + 5
        let height = ceil(size.height)
        
        return CGSize(width: width, height: height)
    }
}

extension HSKLineStyle{
    public mutating func setupDarkTheme(_ isDark:Bool){
        if isDark{
            ma5Color = UIColor.hschart.color(rgba: "#e8de85")
            ma10Color = UIColor.hschart.color(rgba: "#6fa8bb")
            ma20Color = UIColor.hschart.color(rgba: "#df8fc6")
            borderColor = UIColor.hschart.color(rgba: "#171B23")
            crossLineColor = UIColor.hschart.color(rgba: "#171B23")
            textColor = UIColor.hschart.color(rgba: "#ffffff").withAlphaComponent(0.3)
            riseColor = UIColor.hschart.color(rgba: "#FF513F") // 涨 red
            fallColor = UIColor.hschart.color(rgba: "#4BCCAC") // 跌 green
            priceLineColor = UIColor.hschart.color(rgba: "#171B23")
            avgLineColor = UIColor.hschart.color(rgba: "#171B23") // 均线颜色
            fillColor = UIColor.hschart.color(rgba: "#1c212c")
        }else{
            ma5Color = UIColor.hschart.color(rgba: "#e8de85")
            ma10Color = UIColor.hschart.color(rgba: "#6fa8bb")
            ma20Color = UIColor.hschart.color(rgba: "#df8fc6")
            borderColor = UIColor.hschart.color(rgba: "#e4e4e4")
            crossLineColor = UIColor.hschart.color(rgba: "#546679")
            textColor = UIColor.hschart.color(rgba: "#8695a6")
            riseColor = UIColor.hschart.color(rgba: "#f24957") // 涨 red
            fallColor = UIColor.hschart.color(rgba: "#1dbf60") // 跌 green
            priceLineColor = UIColor.hschart.color(rgba: "#0095ff")
            avgLineColor = UIColor.hschart.color(rgba: "#ffc004") // 均线颜色
            fillColor = UIColor.hschart.color(rgba: "#e3efff")
        }
    }
}
