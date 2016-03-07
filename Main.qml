import QtQuick 2.0
import Ubuntu.Components 1.1
import QtQuick.Particles 2.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "particle2.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("particle2")

        ParticleSystem
        {
            anchors.centerIn: parent
            running: true

            ImageParticle {
                anchors.fill: parent
                // source: "qrc:///particleresources/star.png"
                source: "images/starfish_0.png"
                alpha: 0.5
                alphaVariation: 0.2
                colorVariation: 1.0
            }

            Emitter
            {
                emitRate: 20
                size: 50
                lifeSpan: 5000
                velocity: AngleDirection { magnitude: 100; angleVariation: 360  }
            }

            Gravity
            {
                angle: 90
                magnitude: 100
            }

            Turbulence {
                anchors.fill: parent
                strength: 2
            }
        }

    }
}

