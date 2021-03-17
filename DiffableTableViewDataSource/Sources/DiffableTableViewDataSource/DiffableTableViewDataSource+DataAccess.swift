//
//  DiffableTableViewDataSource+DataAccess.swift
//  
//
//  Created by Jaime Azevedo on 17/03/2021.
//

import Foundation

extension DiffableTableViewDataSource {
    // MARK: - Public API

    public func section(at index: Int) -> SectionID {
        snapshot().sectionIdentifiers[index]
    }

    public func row(at indexPath: IndexPath) -> RowID {
        let sectionID = section(at: indexPath.section)
        let rows = snapshot().itemIdentifiers(inSection: sectionID)

        return rows[indexPath.row]
    }
}
