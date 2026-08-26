.class public Lim/doit/pro/activity/utils/UserUIHelper;
.super Ljava/lang/Object;
.source "UserUIHelper.java"


# static fields
.field public static final DateFormat:[Ljava/lang/String;

.field public static final DateFormatForView:[Ljava/lang/String;

.field public static final WeekStartsOn:[Ljava/lang/String;

.field public static final WeekStartsOnForView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 8
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mm/dd/yyyy"

    aput-object v1, v0, v3

    const-string v1, "dd/mm/yyyy"

    aput-object v1, v0, v4

    const-string v1, "yyyy-mm-dd"

    aput-object v1, v0, v5

    sput-object v0, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormatForView:[Ljava/lang/String;

    .line 9
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mm/dd/yyyy"

    aput-object v1, v0, v3

    const-string v1, "dd/mm/yyyy"

    aput-object v1, v0, v4

    const-string v1, "yyyy-mm-dd"

    aput-object v1, v0, v5

    sput-object v0, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormat:[Ljava/lang/String;

    .line 11
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOnForView:[I

    .line 12
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Saturday"

    aput-object v1, v0, v3

    const-string v1, "Sunday"

    aput-object v1, v0, v4

    .line 13
    const-string v1, "Monday"

    aput-object v1, v0, v5

    .line 12
    sput-object v0, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOn:[Ljava/lang/String;

    .line 13
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7f0c00d5
        0x7f0c00d6
        0x7f0c00d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormatForView(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormat:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 21
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 17
    :cond_0
    sget-object v1, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormat:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    sget-object v1, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormatForView:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    .line 16
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTimeFormatForView(I)Ljava/lang/String;
    .locals 1
    .param p0, "timeFormat"    # I

    .prologue
    .line 25
    const/16 v0, 0xc

    if-ne v0, p0, :cond_0

    .line 26
    const v0, 0x7f0c0131

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0130

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWeekStartsOnForView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "weekStartsOn"    # Ljava/lang/String;

    .prologue
    .line 33
    const v1, 0x7f0c00d6

    .line 34
    .local v1, "resId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOn:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 39
    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 35
    :cond_0
    sget-object v2, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOn:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    sget-object v2, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOnForView:[I

    aget v1, v2, v0

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
