.class public Lim/doit/pro/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_TYPE_PRO:Ljava/lang/String; = "pro"

.field public static final ACCOUNT_TYPE_STANDARD:Ljava/lang/String; = "standard"

.field public static final ACCOUNT_TYPE_TRY_PRO:Ljava/lang/String; = "trypro"

.field public static final BOX_NEXT_MONTH:Ljava/lang/String; = "next_month"

.field public static final BOX_NEXT_WEEK:Ljava/lang/String; = "next_week"

.field public static final BOX_NEXT_WORKDAY:Ljava/lang/String; = "next_workday"

.field public static final BOX_THIS_MONTH:Ljava/lang/String; = "this_month"

.field public static final BOX_THIS_WEEK:Ljava/lang/String; = "this_week"

.field public static final BOX_THIS_WORKDAY:Ljava/lang/String; = "this_workday"

.field public static final BOX_TODAY:Ljava/lang/String; = "today"

.field public static final BOX_TOMORROW:Ljava/lang/String; = "tomorrow"

.field public static final DAY_OF_WEEK_FORMAT:[I

.field public static DAY_OF_WEEK_SHORT:[I = null

.field public static DAY_OF_WEEK_SHORT_FOR_WIDGET:[I = null

.field public static final DIALOG_TAG_ARCHIVE_TASKS:Ljava/lang/String; = "DIALOG_TAG_ARCHIVE_TASKS"

.field public static final DIALOG_TAG_EMPTY_TASKS:Ljava/lang/String; = "DIALOG_TAG_EMPTY_TASKS"

.field public static final DIALOG_TAG_GCAL_NOT_GOOGLE_TOKEN:Ljava/lang/String; = "DIALOG_TAG_GCAL_NOT_GOOGLE_TOKEN"

.field public static final DIALOG_TAG_GCAL_RESULT:Ljava/lang/String; = "DIALOG_TAG_GCAL_RESULT"

.field public static final DIALOG_TAG_TIMEZONE_DIFF:Ljava/lang/String; = "DIALOG_TAG_TIMEZONE_DIFF"

.field public static final DIALOG_TAG_TRANSPARENT_PROGRESS:Ljava/lang/String; = "DIALOG_TAG_TRANSPARENT_PROGRESS"

.field public static final EVERNOTE_MAX_COUNT:I = 0x5

.field public static final FEEDBACK_TYPE_BUG:Ljava/lang/String; = "bug"

.field public static final FEEDBACK_TYPE_FEATURE:Ljava/lang/String; = "feature"

.field public static final FILTER_COMPLETED:Ljava/lang/String; = "completed"

.field public static final FILTER_IN:Ljava/lang/String; = "in"

.field public static final FILTER_NIN:Ljava/lang/String; = "nin"

.field public static final FITLER_UNCOMPLETD:Ljava/lang/String; = "uncompleted"

.field public static final FORMAT_DAILY_PLAN:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_DAILY_REVIEW:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_DATE:Ljava/lang/String; = "yyyy/MM/dd"

.field public static final FORMAT_DATE_TIME_Z:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss Z"

.field public static final FORMAT_REPEAT_NO:Ljava/lang/String; = "yyyyMMdd"

.field public static final FORMAT_WORKING_HOURS:Ljava/lang/String; = "HH:mm"

.field public static final GAP:J

.field public static final HOUR_TIME_12:I = 0xc

.field public static final HOUR_TIME_24:I = 0x18

.field public static final HOUR_TIME_DEFAULT:I = 0x18

.field public static final INIT_POS:J = 0x0L

.field public static final LOGIN_TYPE_DOIT:Ljava/lang/String; = "DOIT"

.field public static final LOGIN_TYPE_GOOGLE:Ljava/lang/String; = "GOOGLE"

.field public static final MAX_DELTA:J = 0x50L

.field public static final MAX_POS:J = 0x7ffffffffffffffeL

.field public static final MEDIA_TYPE_EVERNOTE:Ljava/lang/String; = "evernote"

.field public static final MIN_DELTA:J = 0x14L

.field public static final MIN_GAP:J = 0x64L

.field public static final MIN_POS:J = -0x7ffffffffffffffeL

.field public static final MONTH_FORMAT:[I

.field public static final PRI_HIGH:I = 0x3

.field public static final PRI_LOW:I = 0x1

.field public static final PRI_MEDIUM:I = 0x2

.field public static final PRI_NONE:I = 0x0

.field public static final PROJECT_STATUS_ACTIVE:Ljava/lang/String; = "active"

.field public static final PROJECT_STATUS_INACTIVE:Ljava/lang/String; = "inactive"

.field public static final REMINDER_POPUP_STYLE_DEFAULT:Ljava/lang/String; = "title_pop"

.field public static final REMINDER_POPUP_STYLE_DETAIL_POP:Ljava/lang/String; = "detail_pop"

.field public static final REMINDER_POPUP_STYLE_TITLE_POP:Ljava/lang/String; = "title_pop"

.field public static final REPEATER_MONTHLY_LAST_DAYS_FORMAT:[I

.field public static final REPEATER_MONTHLY_WEEKS:[I

.field public static final RPEATER_MONTHLY_WEEK_FORMAT:[I

.field public static final SERVER_CHINA:Ljava/lang/String; = "china"

.field public static final SERVER_DEFAULT:Ljava/lang/String; = "japan"

.field public static final SERVER_JAPAN:Ljava/lang/String; = "japan"

.field public static final WEEK_START_DEFAULT:Ljava/lang/String; = "Monday"

.field public static final WEEK_START_MONDAY:Ljava/lang/String; = "Monday"

.field public static final WEEK_START_SATURDAY:Ljava/lang/String; = "Saturday"

.field public static final WEEK_START_SUNDAY:Ljava/lang/String; = "Sunday"

.field public static final WIDGET_BG_BLACK:Ljava/lang/String; = "#000000"

.field public static final WIDGET_BG_WHITE:Ljava/lang/String; = "#ffffff"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x7

    .line 11
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lim/doit/pro/utils/Constants;->GAP:J

    .line 80
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    .line 81
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lim/doit/pro/utils/Constants;->MONTH_FORMAT:[I

    .line 83
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lim/doit/pro/utils/Constants;->RPEATER_MONTHLY_WEEK_FORMAT:[I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lim/doit/pro/utils/Constants;->REPEATER_MONTHLY_LAST_DAYS_FORMAT:[I

    .line 85
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lim/doit/pro/utils/Constants;->REPEATER_MONTHLY_WEEKS:[I

    .line 86
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_SHORT:[I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_SHORT_FOR_WIDGET:[I

    .line 104
    return-void

    .line 80
    :array_0
    .array-data 4
        0x7f0c00d6
        0x7f0c00d0
        0x7f0c00d1
        0x7f0c00d2
        0x7f0c00d3
        0x7f0c00d4
        0x7f0c00d5
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x7f0c00c1
        0x7f0c00c2
        0x7f0c00c3
        0x7f0c00c4
        0x7f0c00c5
        0x7f0c00c6
        0x7f0c00c7
        0x7f0c00c8
        0x7f0c00c9
        0x7f0c00ca
        0x7f0c00cb
        0x7f0c00cc
    .end array-data

    .line 83
    :array_2
    .array-data 4
        0x7f0c00a2
        0x7f0c009e
        0x7f0c009f
        0x7f0c00a0
        0x7f0c00a1
    .end array-data

    .line 84
    :array_3
    .array-data 4
        0x7f0c00de
        0x7f0c00df
        0x7f0c00e0
    .end array-data

    .line 85
    :array_4
    .array-data 4
        0x7f0c00b2
        0x7f0c00ae
        0x7f0c00af
        0x7f0c00b0
        0x7f0c00b1
    .end array-data

    .line 86
    :array_5
    .array-data 4
        0x7f0c00dd
        0x7f0c00d7
        0x7f0c00d8
        0x7f0c00d9
        0x7f0c00da
        0x7f0c00db
        0x7f0c00dc
    .end array-data

    .line 87
    :array_6
    .array-data 4
        0x7f0c0182
        0x7f0c017c
        0x7f0c017d
        0x7f0c017e
        0x7f0c017f
        0x7f0c0180
        0x7f0c0181
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
