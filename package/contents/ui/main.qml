/*****************************************************************************
 *   Copyright (C) 2018 by Yunusemre Şentürk                                 *
 *   <yunusemre.senturk@pardus.org.tr>                                       *
 *                                                                           *
 *   This program is free software; you can redistribute it and/or modify    *
 *   it under the terms of the GNU General Public License as published by    *
 *   the Free Software Foundation; either version 2 of the License, or       *
 *   (at your option) any later version.                                     *
 *                                                                           *
 *   This program is distributed in the hope that it will be useful,         *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           *
 *   GNU General Public License for more details.                            *
 *                                                                           *
 *   You should have received a copy of the GNU General Public License       *
 *   along with this program; if not, write to the                           *
 *   Free Software Foundation, Inc.,                                         *
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA .          *
 *****************************************************************************/

import QtQuick 1.1
import org.kde.plasma.graphicswidgets 0.1 as PlasmaWidgets

/**
 * This qml component works as declerative plasma widget and basically triggers
 * the Peach Kwin plugin via pushing key shortcuts to the system.
 */
Rectangle {
    id:root
    color:"transparent"
    Item {
        id:iconContainer
        height:parent.height
        PlasmaWidgets.IconWidget {
            id:peachIcon
            preferredIconSize: "48x48"
            minimumIconSize: "32x32"
            drawBackground: false
            anchors {
                left:parent.left
                leftMargin: root.width*9/100
            }
            Component.onCompleted: {
                setIcon("eta-peach")
            }
            onClicked: {
                peachhybrid.fakekey()
            }
        }
    }
    Item {
        id: textholder
        height:parent.height
        width: parent.width - iconContainer.width
        Text {
            text:"AÇIK PENCERELER"
            color: "#FF6C00"
            font.bold : true
            font.pointSize: 10
            font.family: "OpenSymbol"
            anchors {
                left:parent.left
                leftMargin: root.width*9/100 + peachIcon.width + root.width*7/100
                verticalCenter:parent.verticalCenter
            }
        }        
    }
}
