//
//  DiffableSection.swift
//  
//
//  Created by Jaime Azevedo on 17/03/2021.
//

public struct DiffableSection<SectionID: Diffable, RowID: Diffable> {
    public let identifier: SectionID
    public let rows: [RowID]
}
