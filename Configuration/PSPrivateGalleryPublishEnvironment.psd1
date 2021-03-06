﻿@{
    AllNodes = @(
        @{
            NodeName                    = 'localhost'
            Role                        = 'Gallery'
            PsDscAllowPlainTextPassword = $true
                                                    
            GalleryAdminCredFile        = 'C:\PSPrivateGallery\Configuration\GalleryAdminCredFile.clixml'
            GalleryUserCredFile         = 'C:\PSPrivateGallery\Configuration\GalleryUserCredFile.clixml'
                        
            SQLInstance                 = '(LocalDb)\PSGallery'
            DatabaseName                = 'PSGallery'

            EmailAddress                = 'PSPrivateGalleryAdmin@Contoso.com'
            ApiKey                      = 'c34d0782-b5ad-4b45-9165-a168b7f0436f'

            PrivateGalleryName          = 'PSPrivateGallery'
            PrivateGalleryLocation      = 'http://localhost:8080'

            SourceGalleryName          = 'PSGallery'
            SourceGalleryLocation      = 'https://www.powershellgallery.com'
            
            Modules                     = @(
                                            @{
                                                ModuleName     = 'PSScriptAnalyzer'
                                                MaximumVersion = '1.2'
                                            }
                                            @{
                                                ModuleName = 'Authenticode'
                                                RequiredVersion = '2.6'
                                            }
                                            @{
                                                ModuleName     = 'PSScriptAnalyzer'
                                                MinimumVersion = '1.4'
                                            }
                                            @{ 
                                                ModuleName = 'ARTools'
                                                RequiredVersion = '1.0'
                                            }
                                        )
        }                               
    )
}