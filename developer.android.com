<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"

    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#FFFF00 "
    android:backgroundTint="@color/purple_200"
    android:backgroundTintMode="@color/purple_200"
    tools:context=".MainActivity">

    <Button
        android:id="@+id/button_count"
        android:layout_width="412dp"
        android:layout_height="110dp"
        android:layout_marginBottom="4dp"
        android:backgroundTint="@color/purple_200"
        android:text="@string/count"
        android:textColor="@android:color/black"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.0"
        app:layout_constraintStart_toStartOf="parent" />

    <Button
        android:id="@+id/button_Toast"
        android:layout_width="421dp"
        android:layout_height="116dp"
        android:layout_marginBottom="49dp"
        android:backgroundTint="@color/purple_200"
        android:text="@string/button_label_toast"
        android:textColor="@android:color/black"
        app:layout_constraintBottom_toTopOf="@+id/button_count"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.0"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintVertical_bias="0.0" />

    <TextView
        android:id="@+id/show_count."
        android:layout_width="195dp"
        android:layout_height="265dp"
        android:layout_marginTop="84dp"
        android:gravity="center"
        android:text="@string/_0"
        android:textColor="@color/purple_500"
        android:textSize="160sp"
        android:textStyle="bold"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@+id/button_Toast" />

</androidx.constraintlayout.widget.ConstraintLayout>
