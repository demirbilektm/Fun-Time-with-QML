import QtQuick 2.0

Rectangle {

    property alias enabled:  mousearea.enabled
    property int dialogWidth: 300
    property int dialogHeight: 200

    function showmessage(msg){
        text.text=msg
        customdialog.enabled= true
    }

    id: customdialog
    color: "transparent"
    opacity: 0.0
    state: enabled?"on":"baseState"

        states:[
            State{
                name:"on"
                PropertyChanges{
                    target: customdialog
                    opacity:1.0
                }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                NumberAnimation{
                    properties: "opacity"
                    easing.type: Easing.OutQuart
                    duration: 500
                }
            }
        ]

        Rectangle{
            anchors.fill: parent
            color: "#AA3A3A"
        }
        Rectangle{
            anchors.centerIn: parent
            width: dialogWidth
            height: dialogHeight
            color: "#A4B787"
            radius: 25
            Text {
                id: text
                anchors.fill: parent
                anchors.margins: 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "#F8E4B7"
                wrapMode: Text.WordWrap
                font.family: "Garamond"
                font.bold: true
                font.pixelSize: 20
            }
        }
        MouseArea{
            id: mousearea
            anchors.fill: parent
            onClicked: customdialog.enabled= false
        }
}
