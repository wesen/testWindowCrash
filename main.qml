import QtQuick 2.5
import QtQuick.Window 2.2

import QtQml.StateMachine 1.0

import QtQuick.Layouts 1.1

Window {
    visible: true

    StateMachine {
        initialState: foobar

        State {
            id: foobar

            property var window: PFDialog {
                id: dialog
                content: ColumnLayout {
                    spacing: 0
                    Layout.fillWidth: true
                    Text {
                        id: text

                        Component.onCompleted: {
                            qmlHelpers.SetParent(text, dialog)
                            console.log("text parent " + parent + " qt parent " + qmlHelpers.GetParent(text))
                        }

                        Component.onDestruction: {
                            console.log("destroying text " + text)
                        }

                        text: "Foobar"
                    }
                }
            }
        }
    }

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
    }
}
