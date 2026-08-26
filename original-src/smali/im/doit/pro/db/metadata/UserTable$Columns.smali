.class public Lim/doit/pro/db/metadata/UserTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "UserTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/UserTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final AVATAR:Ljava/lang/String; = "avatar"

.field public static final AVATAR_ID:Ljava/lang/String; = "avatar_id"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final DAILY_PLANNING_TIME:Ljava/lang/String; = "daily_planning_time"

.field public static final DAILY_REVIEW_TIME:Ljava/lang/String; = "daily_review_time"

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DOIT_TOKEN:Ljava/lang/String; = "doit_token"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EMAIL_TO_TASK_ADDRESS:Ljava/lang/String; = "email_to_task_address"

.field public static final EVERNOTE:Ljava/lang/String; = "evernote"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final GOOGLE_CALENDAR:Ljava/lang/String; = "google_calendar"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LOWER_ACCOUNT:Ljava/lang/String; = "lower_account"

.field public static final LOWER_EMAIL:Ljava/lang/String; = "lower_email"

.field public static final LUNCH_BREAK_END_TIME:Ljava/lang/String; = "lunch_break_end_time"

.field public static final LUNCH_BREAK_START_TIME:Ljava/lang/String; = "lunch_break_start_time"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final PAY_END_AT:Ljava/lang/String; = "pay_end_at"

.field public static final PAY_START_AT:Ljava/lang/String; = "pay_start_at"

.field public static final PAY_TYPE:Ljava/lang/String; = "pay_type"

.field public static final PLAN_REVIEW_REMIND_ON_WEEKENDS:Ljava/lang/String; = "plan_review_remind_on_weekends"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final REMIND:Ljava/lang/String; = "remind"

.field public static final REMIND_DAILY_PLAN:Ljava/lang/String; = "remind_daily_plan"

.field public static final REMIND_DAILY_REVIEW:Ljava/lang/String; = "remind_daily_review"

.field public static final SETTING:Ljava/lang/String; = "setting"

.field public static final TIME_FORMAT:Ljava/lang/String; = "time_format"

.field public static final TIME_ZONE:Ljava/lang/String; = "time_zone"

.field public static final WEEKLY_REVIEW_DAY:Ljava/lang/String; = "weekly_review_day"

.field public static final WEEKLY_REVIEW_TIME:Ljava/lang/String; = "weekly_review_time"

.field public static final WEEK_START:Ljava/lang/String; = "week_start"

.field public static final WORKING_END_TIME:Ljava/lang/String; = "working_end_time"

.field public static final WORKING_START_TIME:Ljava/lang/String; = "working_start_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
