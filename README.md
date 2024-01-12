# Inventory Management System

## Project Overview
This project is an Inventory Management System designed to track and manage inventory in a retail or warehouse setting. It includes functionalities for managing products, stock levels, suppliers, orders, and product categories.

## Features
- **Product Management**: Add, view, edit, and delete products.
- **Stock Tracking**: Monitor stock levels and warehouse locations.
- **Supplier Information**: Manage supplier details including contact information and addresses.
- **Order Processing**: Handle order placements, tracking, and status updates.
- **Category Management**: Categorize products for better organization.

## Technologies Used
- MySQL for database management.
- Homebrew
- MySQL Workbench

## How to Set Up and Run the Project
1. **Database Setup**:
   - Install MySQL Server and optionally MySQL Workbench.
   - Execute the provided SQL scripts to create the necessary database and tables.

## Database Schema
- `Products`: Stores product details like name, description, price, and category.
- `Stock`: Tracks stock levels and warehouse locations for products.
- `Suppliers`: Contains information about product suppliers.
- `Orders`: Manages order details including product, quantity, order date, and status.
- `Categories`: Holds product category information.

## SQL Scripts
The `sql` directory contains all SQL scripts used for creating and setting up the database. This includes table creation and any initial data loading scripts.

## Contributing
Contributions to this project are welcome. Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

