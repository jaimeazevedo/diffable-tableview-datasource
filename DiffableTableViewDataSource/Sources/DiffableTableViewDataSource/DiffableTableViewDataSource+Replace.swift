//
//  DiffableTableViewDataSource+Replace.swift
//  
//
//  Created by Jaime Azevedo on 17/03/2021.
//

import UIKit

extension DiffableTableViewDataSource {
    // MARK: - Public API

    public func replace(with sections: [DiffableSection<SectionID, RowID>], animatingDifferences: Bool = true) {
        var snapshot = NSDiffableDataSourceSnapshot<SectionID, RowID>()

        snapshot.appendSections(sections.map(\.identifier))

        sections.forEach {
            snapshot.appendItems($0.rows, toSection: $0.identifier)
        }

        apply(snapshot, animatingDifferences: animatingDifferences)
    }
}
