import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Expandable Content")

    ScrollView{
        anchors.fill: parent
        contentHeight: scrolViewRect.height
        Rectangle{
            id: scrolViewRect
            implicitHeight: childrenRect.height
            implicitWidth: childrenRect.width
            ExpandableItem{
                id:expandone
                title: "Samuel Beckett"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: beckettimg
                        source: "qrc:/Images/beckett-diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }

                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: beckettimg.width
                        height: beckettimg.height*0.2
                        Layout.margins: 8
                        Text {
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin: 20
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 35
                            id: test2
                            text: "Prize motivation: for his writing,which - in new forms for the novel and drama -" +"\n"+ "in the destitution of modern man acquires its elevation."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                        }
                    }

                }
            }
            ExpandableItem{
                id:expandtwo
                title: "Alice Munro"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandone.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: munroimg
                        source: "qrc:/Images/munro-diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: munroimg.width
                        height: munroimg.height*0.2
                        Layout.margins: 8
                        Text {
                            id: munrotext
                            anchors.centerIn: parent
                            text: "Prize motivation: master of the contemporary short story."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                        }
                    }
                }
            }
            ExpandableItem{
                id:expandthree
                title: "Pablo Neruda"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandtwo.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: nerudaimg
                        source: "qrc:/Images/neruda-diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: nerudaimg.width
                        height: nerudaimg.height*0.2
                        Layout.margins: 8
                        Text {
                            id: nerudatext
                            text: "Prize motivation: for a poetry that with the action of an elemental" + " force brings alive a continent's destiny and dreams."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin: 20
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 35
                        }

                    }
                }
            }
            ExpandableItem{
                id:expandfour
                title: "Doris Lessing"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandthree.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: dorisimg
                        source: "qrc:/Images/lessing_diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: dorisimg.width
                        height: dorisimg.height*0.2
                        Layout.margins: 8
                        Text {
                            id: doristext
                            text: "Prize motivation: that epicist of the female experience, who with scepticism," + " fire and visionary power has subjected a divided civilisation to scrutiny."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin: 20
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 35
                        }
                    }
                }
            }
            ExpandableItem{
                id:expandfive
                title: "Orhan Pamuk"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandfour.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: pamukimg
                        source: "qrc:/Images/pamuk_diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: pamukimg.width
                        height: pamukimg.height*0.2
                        Layout.margins: 8
                        Text {
                            id: pamuktext
                            text: "Prize motivation: who in the quest for the melancholic soul of his native city has " + "discovered new symbols for the clash and interlacing of cultures."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin:20
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                        }
                    }
                }
            }
            ExpandableItem{
                id:expandsix
                title: "Octavia Paz"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandfive.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: pazimg
                        source: "qrc:/Images/paz-diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }

                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        width: pazimg.width
                        height: pazimg.height*0.2
                        Layout.margins: 8
                        Text {
                            id: paztext
                            text: "Prize motivation: for impassioned writing with wide horizons," + "characterized by sensuous intelligence and humanistic integrity"
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin: 20
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 35
                        }
                    }
                }
            }
            ExpandableItem{
                id:expandseven
                title: "Svetlana Alexievitch"
                color:"#86A8E7"
                circlecolor: "white"
                width: 640
                anchors.top: expandsix.bottom
                anchors.topMargin: 10
                expandcontent: ColumnLayout{
                    Layout.fillWidth: true
                    height: 250
                    spacing: 5
                    anchors.fill: parent
                    Image {
                        id: svetlenaimg
                        source: "qrc:/Images/alexievitch-diploma.jpg"
                        fillMode: Image.PreserveAspectFit
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Rectangle{
                        color: "#D16BA5"
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        radius: 25
                        Layout.margins: 8
                        width: svetlenaimg.width
                        height: svetlenaimg.height*0.2
                        Text {
                            id: svetlenatext
                            text: "Prize motivation: for her polyphonic writings, a monument to suffering and courage in our time."
                            wrapMode: Text.WordWrap
                            color: "white"
                            font.pixelSize: 15
                            anchors.fill: parent
                            anchors.top: parent.top
                            anchors.topMargin: 15
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                        }

                    }
                }
            }
        }
    }
}
