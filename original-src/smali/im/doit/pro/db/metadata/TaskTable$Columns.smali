.class public Lim/doit/pro/db/metadata/TaskTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "TaskTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/TaskTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALL_DAY:Ljava/lang/String; = "all_day"

.field public static final ARCHIVED:Ljava/lang/String; = "archived"

.field public static final ASSIGNMENT:Ljava/lang/String; = "assignment"

.field public static final ATTRIBUTE:Ljava/lang/String; = "attribute"

.field public static final COMPLETED:Ljava/lang/String; = "completed"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final END_AT:Ljava/lang/String; = "end_at"

.field public static final ESTIMATED_TIME:Ljava/lang/String; = "estimated_time"

.field public static final FROM_SUBTASK:Ljava/lang/String; = "from_subtask"

.field public static final GOAL:Ljava/lang/String; = "goal"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final LOCAL_ATTACHMENTS:Ljava/lang/String; = "local_attachments"

.field public static final MEDIAS:Ljava/lang/String; = "medias"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final NOW:Ljava/lang/String; = "now"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PROJECT:Ljava/lang/String; = "project"

.field public static final REMINDERS:Ljava/lang/String; = "reminders"

.field public static final REPEATER:Ljava/lang/String; = "repeater"

.field public static final REPEAT_NO:Ljava/lang/String; = "repeat_no"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SENDER_EMAIL:Ljava/lang/String; = "sender_email"

.field public static final SEND_ORIGIN:Ljava/lang/String; = "send_origin"

.field public static final SENT_AT:Ljava/lang/String; = "sent_at"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SPENT_TIME:Ljava/lang/String; = "spent_time"

.field public static final START_AT:Ljava/lang/String; = "start_at"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRASHED:Ljava/lang/String; = "trashed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
