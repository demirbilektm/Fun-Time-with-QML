import QtQuick 2.0
import QtQuick.Layouts 1.12

ColumnLayout{
    id: rootcolumn
    property bool isOpen: false
    property string title: ""
    property alias color: expandheader.color
    property alias circlecolor: radiusrect.color
    default property alias expandcontent: contentplace.data
    spacing:0
    Layout.fillWidth: true

    Rectangle{
    id: expandheader
    color: "red"
    Layout.alignment: Qt.AlignTop
    Layout.fillWidth: true
    height: 45

    Rectangle{
    id:radiusrect
    x:16
    y:20
    width: 8
    height: 8
    radius:8
    color: "white"
    }

    Text {
        x:34
        y:13
        text: rootcolumn.title
        font.family: "garamond"
        font.bold: true
        color: "white"
        font.pixelSize: 16
    }

    Image{
    y: 20
    anchors.right: parent.right
    anchors.rightMargin: 20
    width: 6
    height: 10
    id:img
    source: ""


    }

    MouseArea{
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor
    onClicked: {
        rootcolumn.isOpen= !rootcolumn.isOpen
    if(rootcolumn.isOpen){
    img.source=""
        img.width=10
        img.height=6
    } else{

    img.source=""
        img.width=6
        img.height=10


    }


    }

    }


    }

    ColumnLayout{
    id:contentplace
    visible: rootcolumn.isOpen
    Layout.fillWidth: true

    }

}
