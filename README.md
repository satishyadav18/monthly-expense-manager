# Mintly — Monthly Expense Manager

A private, browser-based monthly expense tracker set up with a ₹15,000 INR budget.

## Use it

Open `expense-manager.html` in any modern browser. Add expenses, view category totals, and track your remaining daily allowance. Entries are stored in your browser's local storage; nothing is sent to a server.

## Features

- ₹15,000 monthly budget with real-time remaining balance
- Expense form with date and category support
- Category-wise expense summary
- Daily allowance and budget-progress indicators
- Local browser storage
- Email/password accounts with secure, per-user Supabase cloud sync

## Enable cloud accounts

1. In Supabase, open **SQL Editor** and run the contents of `supabase-setup.sql` once.
2. In **Authentication → URL Configuration**, add `https://satishyadav18.github.io/monthly-expense-manager/` as a redirect URL.
3. Users can then select **Sign in** in the app to create an account or access their saved expenses.

