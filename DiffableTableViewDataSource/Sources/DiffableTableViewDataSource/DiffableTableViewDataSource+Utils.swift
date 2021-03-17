//
//  DiffableTableViewDataSource.swift
//  
//
//  Created by Jaime Azevedo on 17/03/2021.
//

extension DiffableTableViewDataSource {
    // MARK: - Public API

    public func reload(sections: [SectionID], animatingDifferences: Bool = true) {
        var snapshot = self.snapshot()
        let sections = sections.filter { snapshot.sectionIdentifiers.contains($0) }

        guard !sections.isEmpty else {
            return
        }

        snapshot.reloadSections(sections)

        apply(snapshot, animatingDifferences: animatingDifferences)
    }
}
