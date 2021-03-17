//
//  DiffableTableViewDataSource.swift
//
//
//  Created by Jaime Azevedo on 17/03/2021.
//

import UIKit

public final class DiffableTableViewDataSource<SectionID: Diffable, RowID: Diffable>: UITableViewDiffableDataSource<SectionID, RowID> {
    // MARK: - Properties

    private let canEditProvider: ((IndexPath) -> Bool)?

    // MARK: - Initializer

    public init(
        tableView: UITableView,
        cellProvider: @escaping UITableViewDiffableDataSource<SectionID, RowID>.CellProvider,
        canEditProvider: ((IndexPath) -> Bool)? = nil
    ) {
        self.canEditProvider = canEditProvider

        super.init(tableView: tableView, cellProvider: cellProvider)
    }

    // MARK: - Overrides

    override public func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        canEditProvider?(indexPath) ?? super.tableView(tableView, canEditRowAt: indexPath)
    }
}
