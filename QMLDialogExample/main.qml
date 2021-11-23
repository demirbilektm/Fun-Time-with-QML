import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Dialog")
    color: "#F8E4B7"
    Button{
        id: cbutton
        anchors.centerIn: parent
        text: "Click Me!"
        contentItem: Text {
            text: cbutton.text
            font.family: "garamond"
            font.bold: true
            font.pixelSize: 20
            opacity: enabled? 1.0:0.3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide:Text.ElideRight
            color: "#A4B787"
        }
        background: Rectangle{
            implicitWidth: 100
            implicitHeight: 40
            radius: 25
            color: "#AA3A3A"
            opacity: enabled?1: 0.3
            border.color: cbutton.down? "#A4B787": "#A4B787"
            border.width:2
        }
        onClicked: customdialog.showmessage("Thank You For Clicking Me!")
    }
    CustomDialog{
        id: customdialog
        anchors.fill: parent
        enabled: false

    }
}
