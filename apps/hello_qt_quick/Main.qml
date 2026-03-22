import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: window
    width: 840
    height: 480
    visible: true
    title: qsTr("“Панель состояния")
    property bool online: false
    property int counter: 0
    Rectangle{
        anchors.fill: parent
        color: "#f4f7aa"
        ColumnLayout {
            anchors.centerIn: parent
            spacing: 50

            Label {
                text: "Статус"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle{
                id: indicator
                color: window.online ? "green" : "red"
                Layout.preferredWidth: 80
                Layout.preferredHeight: 20
                Layout.alignment: Qt.AlignHCenter

                Label {
                    text:  window.online ? "Online" : "Offline"
                    font.pixelSize: 16
                    Layout.alignment: Qt.AlignHCenter
                }
            }

            Button {
                text: "Toggle status"
                Layout.alignment: Qt.AlignHCenter
                onClicked: {
                    window.online = !window.online
                    window.counter++;
                }
            }
            Label {
                text: window.counter
                font.pixelSize: 16
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }
}
