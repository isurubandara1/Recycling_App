# Recycling App

This app has been developed to be highly user-friendly and compatible with the Flutter framework to facilitate the removal of unnecessary materials from homes. Users can easily list items they want to dispose of, and sellers can browse these listings to purchase materials. This application aims to make the process of recycling and reusing materials simple and effective for both homeowners and sellers.

![App Screenshot](https://github.com/user-attachments/assets/f669d5c3-80ea-4637-9a38-79de56178843)

## Features

- **User Registration and Authentication:**
  - Secure sign-up and login functionality using Firebase Authentication.
  - Supports email/password authentication for easy access.

- **Material Listing:**
  - Users can create listings for materials they want to dispose of.
  - Each listing includes a title, description, category, and images of the material.
  - Users can specify the condition and location of the material.

- **Material Search and Filtering:**
  - Sellers can search for available materials using keywords.
  - Categories, location, condition, and more can filter listings.
  - Real-time search results powered by Firebase Firestore.

- **Firestore Database Integration:**
  - All data is stored in Firebase Firestore, providing updates.
  - Any changes to listings are immediately reflected for all users.

- **Notifications:**
  - Users receive real-time notifications for new listings and updates.
  - Push notifications alert sellers about materials that match their interests.

- **User Profiles:**
  - Each user has a profile with their contact information and listed materials.
  - Users can edit their profiles and manage their listings from a central dashboard.

## Getting Started

### Prerequisites

Before you start, ensure you have the following installed:

- **Flutter SDK** (>=2.0.0)
- **Dart SDK** (>=2.12.0)
- **Firebase Account**
- **Android Studio** or **VS Code**

### Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/recycling-app.git
   cd recycling-app
