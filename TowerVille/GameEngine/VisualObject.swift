//
//  VisualObject.swift
//  TowerVille
//
//  Created by Daniel Tian on 2018-01-24.
//  Copyright © 2018 The-Fighting-Mongeese. All rights reserved.
//

import Foundation


class VisualObject : GameObject{
    
    var renderObject : RenderObject?
    
    func LinkRenderObject(_ renderObj : RenderObject)
    {
        self.renderObject?.gameObject = nil // unlink RO if one is already set
        self.renderObject = renderObj
        renderObj.gameObject = self
    }
    
    func UnlinkRenderObject()
    {
        self.renderObject?.gameObject = nil // unlink RO if set
        self.renderObject = nil
    }
    
    func Draw()
    {
        renderObject?.gameObject = self
        renderObject?.Draw()
        renderObject?.gameObject = nil      // optional
    }
}
