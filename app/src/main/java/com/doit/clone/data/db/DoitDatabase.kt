package com.doit.clone.data.db

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.doit.clone.data.db.dao.ContextDao
import com.doit.clone.data.db.dao.FilterDao
import com.doit.clone.data.db.dao.GoalDao
import com.doit.clone.data.db.dao.ProjectDao
import com.doit.clone.data.db.dao.SubTaskDao
import com.doit.clone.data.db.dao.TaskDao
import com.doit.clone.data.db.entity.ContextEntity
import com.doit.clone.data.db.entity.FilterEntity
import com.doit.clone.data.db.entity.GoalEntity
import com.doit.clone.data.db.entity.ProjectEntity
import com.doit.clone.data.db.entity.SubTaskEntity
import com.doit.clone.data.db.entity.TaskEntity

@Database(
    entities = [
        TaskEntity::class, SubTaskEntity::class, ProjectEntity::class,
        GoalEntity::class, ContextEntity::class, FilterEntity::class
    ],
    version = 1,
    exportSchema = false
)
abstract class DoitDatabase : RoomDatabase() {
    abstract fun taskDao(): TaskDao
    abstract fun subTaskDao(): SubTaskDao
    abstract fun projectDao(): ProjectDao
    abstract fun goalDao(): GoalDao
    abstract fun contextDao(): ContextDao
    abstract fun filterDao(): FilterDao

    companion object {
        fun build(context: Context): DoitDatabase =
            Room.databaseBuilder(context.applicationContext, DoitDatabase::class.java, "doit.db")
                .fallbackToDestructiveMigration()
                .build()
    }
}
