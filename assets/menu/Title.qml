import QtQuick 2.9
import QtGraphicalEffects 1.0

import krus.morten.style 1.0

Item {
    id: root

    width: 700
    height: 280

    property string text: ""
    property string fontName: "SimSun"
    property int fontSize: 150
    property int colorOrder: Math.random() < 0.5

    Item {
        id: title

        anchors.fill: parent

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "热血"
            font.family: root.fontName
            font.pixelSize: root.fontSize
            color: "red"
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            text: "冰壶"
            font.family: root.fontName
            font.pixelSize: root.fontSize - 20
            color: "blue"
        }
    }

    DropShadow {
        anchors.fill: title
        source: title
        horizontalOffset: 5
        verticalOffset: 5
        radius: 8.0
        samples: 17
        color: Style.titleShadowColor
    }
}
