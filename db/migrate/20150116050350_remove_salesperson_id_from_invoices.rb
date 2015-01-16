class RemoveSalespersonIdFromInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :salespersonId, :integer
    add_column    :invoices, :employee_id, :integer
  end
end
