workspace "Name of workspace" "Description." {
    model {
        # personas, software systems, containers, components
        toBeReplaced = softwaresystem "Name to replace" "Description to replace"  ""
    }

    views {
        systemcontext toBeReplaced "SystemContext" {
            include *
            autoLayout
        }

        container toBeReplaced "Containers" {
            include *
            autoLayout
        }

        styles {
            # Create special shape for customer
            element "Customer" {
                background #08427b
                fontSize 22
                shape Person
            }
            element "Existing System" {
                background #999999
                color #ffffff
            }

            # shapes for specific technologies 
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile App" {
                shape MobileDeviceLandscape
            }
            element "Database" {
                shape Cylinder
            }

            # important in components diagram formatting
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
        }
    }
}