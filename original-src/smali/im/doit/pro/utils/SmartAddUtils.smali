.class public Lim/doit/pro/utils/SmartAddUtils;
.super Ljava/lang/Object;
.source "SmartAddUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/utils/SmartAddUtils$NotParseException;,
        Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;,
        Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;,
        Lim/doit/pro/utils/SmartAddUtils$SmartAddTaskContext;
    }
.end annotation


# static fields
.field private static DMDigitPattern:Ljava/lang/String;

.field private static DMYDigitPattern:Ljava/lang/String;

.field private static DMYHMDigitPattern:Ljava/lang/String;

.field private static MDDigitPattern:Ljava/lang/String;

.field private static MDWordPattern:Ljava/lang/String;

.field private static MDYDigitPattern:Ljava/lang/String;

.field private static MDYHMDigitPattern:Ljava/lang/String;

.field private static YMDDigitPattern:Ljava/lang/String;

.field private static YMDHMDigitPattern:Ljava/lang/String;

.field private static dateWithOnPattern:Ljava/lang/String;

.field private static dateWordPattern:Ljava/lang/String;

.field private static fromNowPattern:Ljava/lang/String;

.field private static monthWithInPattern:Ljava/lang/String;

.field private static monthWrodPattern:Ljava/lang/String;

.field private static singletonInstance:Lim/doit/pro/utils/SmartAddUtils;

.field private static timePattern:Ljava/lang/String;

.field private static weekDayPattern:Ljava/lang/String;


# instance fields
.field private DATE_SPLIT_FLAG:Ljava/lang/String;

.field private END_AT_PRE:Ljava/lang/String;

.field private END_PREFIX:Ljava/lang/String;

.field private NOR_OR_SPACE:Ljava/lang/String;

.field private PREFIX:Ljava/lang/String;

.field private SPACE:Ljava/lang/String;

.field private START_AT_PRE:Ljava/lang/String;

.field private START_PREFIX:Ljava/lang/String;

.field private TIME_SPLITE_FLAG:Ljava/lang/String;

.field private _dateDigitPattern:Ljava/lang/String;

.field private _dayWithUnitPattern:Ljava/lang/String;

.field private _hourWithUnitDigitPattern:Ljava/lang/String;

.field private _minuteWithUnitPattern:Ljava/lang/String;

.field private _monthDigitPattern:Ljava/lang/String;

.field private _time24HourDigitPattern:Ljava/lang/String;

.field private _time24HourPattern:Ljava/lang/String;

.field private _today:Ljava/lang/String;

.field private _tomorrow:Ljava/lang/String;

.field private _weekWithUnitPattern:Ljava/lang/String;

.field private _yearDigitPattern:Ljava/lang/String;

.field private dateDigitWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateMatch:Z

.field private isDueDate:Z

.field private mInput:Ljava/lang/String;

.field private monthDigitWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monthWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeMatch:Z

.field private weekDayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->monthWordList:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->monthDigitWordList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->dateDigitWordList:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->weekDayList:Ljava/util/List;

    .line 317
    iput-boolean v1, p0, Lim/doit/pro/utils/SmartAddUtils;->dateMatch:Z

    iput-boolean v1, p0, Lim/doit/pro/utils/SmartAddUtils;->timeMatch:Z

    .line 319
    iput-boolean v1, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    .line 146
    invoke-direct {p0}, Lim/doit/pro/utils/SmartAddUtils;->init()V

    .line 147
    return-void
.end method

.method private checkDateExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils;->dateMatch:Z

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Lim/doit/pro/utils/SmartAddUtils$NotParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/utils/SmartAddUtils$NotParseException;-><init>(Lim/doit/pro/utils/SmartAddUtils;Lim/doit/pro/utils/SmartAddUtils$NotParseException;)V

    throw v0

    .line 491
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils;->dateMatch:Z

    .line 492
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    .line 496
    :cond_1
    return-void
.end method

.method private checkTimeExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils;->timeMatch:Z

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Lim/doit/pro/utils/SmartAddUtils$NotParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/utils/SmartAddUtils$NotParseException;-><init>(Lim/doit/pro/utils/SmartAddUtils;Lim/doit/pro/utils/SmartAddUtils$NotParseException;)V

    throw v0

    .line 503
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils;->timeMatch:Z

    .line 504
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    .line 508
    :cond_1
    return-void
.end method

.method private formatYMDHMForParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "tmp":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "."

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    const-string v2, ":00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lim/doit/pro/utils/SmartAddUtils;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lim/doit/pro/utils/SmartAddUtils;->singletonInstance:Lim/doit/pro/utils/SmartAddUtils;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lim/doit/pro/utils/SmartAddUtils;

    invoke-direct {v0}, Lim/doit/pro/utils/SmartAddUtils;-><init>()V

    sput-object v0, Lim/doit/pro/utils/SmartAddUtils;->singletonInstance:Lim/doit/pro/utils/SmartAddUtils;

    .line 142
    :cond_0
    sget-object v0, Lim/doit/pro/utils/SmartAddUtils;->singletonInstance:Lim/doit/pro/utils/SmartAddUtils;

    return-object v0
.end method

.method private getLocalSettingMDFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 559
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getMonthDayFormat()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "tmp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 563
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    .line 561
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalYMDFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "tmp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    .line 540
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalYMDPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localFormat"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "MM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    sget-object v0, Lim/doit/pro/utils/SmartAddUtils;->MDYDigitPattern:Ljava/lang/String;

    .line 555
    :cond_0
    :goto_0
    return-object v0

    .line 550
    :cond_1
    const-string v1, "dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    sget-object v0, Lim/doit/pro/utils/SmartAddUtils;->DMYDigitPattern:Ljava/lang/String;

    .line 552
    goto :goto_0

    :cond_2
    const-string v1, "yyyy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    sget-object v0, Lim/doit/pro/utils/SmartAddUtils;->YMDDigitPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTime12HourPattern()Ljava/lang/String;
    .locals 7

    .prologue
    .line 92
    const-string v2, ""

    .line 93
    .local v2, "pattern":Ljava/lang/String;
    const-string v0, "(1[012]|0?[0-9])"

    .line 94
    .local v0, "hourDigit":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(([0-5])?[0-9]))?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "minDigit":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(([0-5])?[0-9]))?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "secDigit":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->NOR_OR_SPACE:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "(o\'clock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")?(((in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 97
    const-string v6, "the"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")?afternoon)|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->NOR_OR_SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    const-string v6, "|am?|pm?|((in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "the"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")?morning))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "unit":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "(at"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    const-string v6, ")?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    const-string v1, "\\s+"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    .line 151
    const-string v1, "\\s*"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->NOR_OR_SPACE:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,.;:"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 158
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-/."

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":."

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    const-string v1, "(^|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    const-string v1, "($|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    const-string v1, "(("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "^"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->NOR_OR_SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 179
    const-string v1, "((due"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(at|on)?|deadline|end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "line|endline)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->END_AT_PRE:Ljava/lang/String;

    .line 184
    const-string v1, "([1-9][0-9]{3})"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_yearDigitPattern:Ljava/lang/String;

    .line 185
    const-string v1, "((0?[1-9])|([1][012]))"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    .line 186
    const-string v1, "((3[01])|([12][0-9])|(0?[1-9]))"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    const-string v1, "(2[0-3]|1[0-9]|0?[0-9])("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string v2, "(([0-5])?[0-9]))?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourDigitPattern:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string v2, " *(o\'clock)?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourPattern:Ljava/lang/String;

    .line 198
    const-string v1, "([1-9]([0-9])?){1,10} *(minutes?|min?)"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_minuteWithUnitPattern:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    const-string v1, "([1-9]([0-9])?){1,10}("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, "[0-9]{1,10})? *(hrs?|hours?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_hourWithUnitDigitPattern:Ljava/lang/String;

    .line 205
    const-string v1, "([1-9]([0-9])?){1,10} *(days?)"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_dayWithUnitPattern:Ljava/lang/String;

    .line 206
    const-string v1, "([1-9]([0-9])?){1,10} *(weeks?)"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_weekWithUnitPattern:Ljava/lang/String;

    .line 207
    const-string v1, "(today|tdy|tod)"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_today:Ljava/lang/String;

    .line 208
    const-string v1, "(tomorrow|tmw|tom)"

    iput-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_tomorrow:Ljava/lang/String;

    .line 210
    const-string v1, "(%s|%s)"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourPattern:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 211
    invoke-direct {p0}, Lim/doit/pro/utils/SmartAddUtils;->getTime12HourPattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 210
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->timePattern:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->monthWordList:Ljava/util/List;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jan(uary)?"

    aput-object v3, v2, v5

    .line 213
    const-string v3, "feb(uary)?"

    aput-object v3, v2, v6

    const-string v3, "mar(ch)?"

    aput-object v3, v2, v7

    const-string v3, "apr(il)?"

    aput-object v3, v2, v8

    const-string v3, "may?"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "jun(e)?"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 214
    const-string v4, "jul(y)?"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "aug(ust)?"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "sept(ember)?"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "oct(ober)?"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 215
    const-string v4, "nov(ember)?"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "dec(ember)?"

    aput-object v4, v2, v3

    .line 212
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->monthDigitWordList:Ljava/util/List;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 217
    const-string v3, "(1|jan(uary)?)"

    aput-object v3, v2, v5

    const-string v3, "(2|feb(uary)?)"

    aput-object v3, v2, v6

    const-string v3, "(3|mar(ch)?)"

    aput-object v3, v2, v7

    .line 218
    const-string v3, "(4|apr(il)?)"

    aput-object v3, v2, v8

    const-string v3, "(5|may?)"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "(6|jun(e)?)"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "(7|jul(y)?)"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 219
    const-string v4, "(8|aug(ust)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "(9|sept(ember)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "(10|oct(ober)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 220
    const-string v4, "(11|nov(ember)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "(12|dec(ember)?)"

    aput-object v4, v2, v3

    .line 216
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->dateDigitWordList:Ljava/util/List;

    const/16 v2, 0x1f

    new-array v2, v2, [Ljava/lang/String;

    .line 222
    const-string v3, "(1(st)?|first|one)"

    aput-object v3, v2, v5

    const-string v3, "(2(nd)?|second|two)"

    aput-object v3, v2, v6

    .line 223
    const-string v3, "(3(rd)?|third|three)"

    aput-object v3, v2, v7

    const-string v3, "(4(th)?|fourth|four)"

    aput-object v3, v2, v8

    .line 224
    const-string v3, "(5(th)?|fifth|five)"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "(6(th)?|sixth|six)"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 225
    const-string v4, "(7(th)?|seventh|seven)"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "(8(th)?|eighth|eight)"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 226
    const-string v4, "(9(th)?|ninth|nine)"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "(10(th)?|ten(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 227
    const-string v4, "(11(th)?|eleven(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "(12(th)?|twelfth|twelve)"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 228
    const-string v4, "(13(th)?|thirteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "(14(th)?|fourteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 229
    const-string v4, "(15(th)?|fifteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "(16(th)?|sixteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    .line 230
    const-string v4, "(17(th)?|seventeen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "(18(th)?|eighteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    .line 231
    const-string v4, "(19(th)?|nineteen(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "(20(th)?|twentieth|twenty)"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    .line 232
    const-string v4, "(21(st)?|twenty-(first|one))"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    .line 233
    const-string v4, "(22(nd)?|twenty-(second|two))"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    .line 234
    const-string v4, "(23(rd)?|twenty-(third|three))"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "(24(th)?|twenty-four(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    .line 235
    const-string v4, "(25(th)?|twenty-(fifth|five))"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "(26(th)?|twenty-six(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    .line 236
    const-string v4, "(27(th)?|twenty-seven(th)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "(28(th)?|twenty-eight(h)?)"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    .line 237
    const-string v4, "(29(th)?|twenty-(ninth|nine))"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "(30(th)?|thirtieth|thirty)"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    .line 238
    const-string v4, "(31(st)?|thirty-(first|one))"

    aput-object v4, v2, v3

    .line 221
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->weekDayList:Ljava/util/List;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "(sun(day)?)"

    aput-object v3, v2, v5

    .line 240
    const-string v3, "(mon(day)?)"

    aput-object v3, v2, v6

    const-string v3, "(tue(sday)?)"

    aput-object v3, v2, v7

    const-string v3, "(wed(nesday)?)"

    aput-object v3, v2, v8

    .line 241
    const-string v3, "(thur(sday)?)"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "(fri(day)?)"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "(sat(urday)?)"

    aput-object v4, v2, v3

    .line 239
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->monthWordList:Ljava/util/List;

    const-string v3, "|"

    invoke-static {v2, v3}, Lim/doit/pro/utils/CollectionUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->monthWrodPattern:Ljava/lang/String;

    .line 248
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->dateDigitWordList:Ljava/util/List;

    const-string v3, "|"

    invoke-static {v2, v3}, Lim/doit/pro/utils/CollectionUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->dateWordPattern:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_yearDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->YMDDigitPattern:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 260
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_yearDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->MDYDigitPattern:Ljava/lang/String;

    .line 265
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_yearDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->DMYDigitPattern:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    sget-object v1, Lim/doit/pro/utils/SmartAddUtils;->YMDDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->YMDHMDigitPattern:Ljava/lang/String;

    .line 274
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    sget-object v1, Lim/doit/pro/utils/SmartAddUtils;->MDYDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->MDYHMDigitPattern:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lim/doit/pro/utils/SmartAddUtils;->DMYDigitPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_time24HourDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->DMYHMDigitPattern:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->MDDigitPattern:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 287
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_dateDigitPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->_monthDigitPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->DMDigitPattern:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    sget-object v1, Lim/doit/pro/utils/SmartAddUtils;->monthWrodPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    sget-object v2, Lim/doit/pro/utils/SmartAddUtils;->dateWordPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->MDWordPattern:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 295
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->monthDigitWordList:Ljava/util/List;

    const-string v3, "|"

    invoke-static {v2, v3}, Lim/doit/pro/utils/CollectionUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->monthWithInPattern:Ljava/lang/String;

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/utils/SmartAddUtils;->dateWordPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->dateWithOnPattern:Ljava/lang/String;

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 304
    const-string v1, "((next|nxt)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->weekDayList:Ljava/util/List;

    const-string v3, "|"

    invoke-static {v2, v3}, Lim/doit/pro/utils/CollectionUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->weekDayPattern:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "((%s)|(%s)|(%s)|(%s))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string v2, "now)?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_minuteWithUnitPattern:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_hourWithUnitDigitPattern:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 314
    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_dayWithUnitPattern:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_weekWithUnitPattern:Ljava/lang/String;

    aput-object v3, v2, v8

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/doit/pro/utils/SmartAddUtils;->fromNowPattern:Ljava/lang/String;

    .line 315
    return-void
.end method

.method private isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    .line 1072
    const/4 v2, 0x2

    invoke-static {p2, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1073
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1074
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    const/4 v2, 0x1

    .line 1077
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 1052
    const/4 v5, 0x2

    invoke-static {p2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1053
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1055
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 1056
    .local v0, "count":I
    const/4 v4, 0x0

    .line 1057
    .local v4, "result":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1068
    return-object v4

    .line 1058
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "group":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1062
    const/4 v5, 0x1

    if-lt v0, v5, :cond_2

    .line 1063
    new-instance v5, Lim/doit/pro/utils/SmartAddUtils$NotParseException;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lim/doit/pro/utils/SmartAddUtils$NotParseException;-><init>(Lim/doit/pro/utils/SmartAddUtils;Lim/doit/pro/utils/SmartAddUtils$NotParseException;)V

    throw v5

    .line 1065
    :cond_2
    move-object v4, v1

    .line 1066
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .locals 18
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    .line 394
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/utils/SmartAddUtils;->dateMatch:Z

    .line 395
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/utils/SmartAddUtils;->timeMatch:Z

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternYMDHM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, "ymdhm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternYMD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 399
    .local v14, "ymd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternFromNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "fromNow":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 401
    .local v11, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternInMonth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "inMonth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternOnDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, "onDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternMD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "md":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternMDWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "mdWord":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternMonthWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 406
    .local v8, "monthWord":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternWeekDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "weekday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/utils/SmartAddUtils;->mInput:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lim/doit/pro/utils/SmartAddUtils;->patternTodayTomorrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, "todayTomorrow":Ljava/lang/String;
    new-instance v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;-><init>(Lim/doit/pro/utils/SmartAddUtils;)V

    .line 410
    .local v10, "result":Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lim/doit/pro/utils/SmartAddUtils;->parseYMDHM(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 411
    .local v2, "date":Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .line 412
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->YMDHM:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 413
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 414
    iput-object v15, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 417
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lim/doit/pro/utils/SmartAddUtils;->parseYMD(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_1

    .line 419
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->YMD:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 420
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 421
    iput-object v14, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 424
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lim/doit/pro/utils/SmartAddUtils;->parseMD(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_2

    .line 426
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->MD:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 427
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 428
    iput-object v6, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 431
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lim/doit/pro/utils/SmartAddUtils;->parseMDWord(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_3

    .line 433
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->MD:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 434
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 435
    iput-object v7, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 438
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lim/doit/pro/utils/SmartAddUtils;->parseInMonth(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_4

    .line 440
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->M:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 441
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 442
    iput-object v5, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 445
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lim/doit/pro/utils/SmartAddUtils;->parseMonthWord(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_5

    .line 447
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->M:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 448
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 449
    iput-object v8, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 452
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lim/doit/pro/utils/SmartAddUtils;->parseOnDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 453
    if-eqz v2, :cond_6

    .line 454
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->D:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 455
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 456
    iput-object v9, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 459
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lim/doit/pro/utils/SmartAddUtils;->parseWeekDay(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_7

    .line 461
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->W:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 462
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 463
    iput-object v13, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 466
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lim/doit/pro/utils/SmartAddUtils;->parseTodayTomorrow(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 467
    if-eqz v2, :cond_8

    .line 468
    sget-object v16, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->YMD:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 469
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    .line 470
    iput-object v12, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 473
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lim/doit/pro/utils/SmartAddUtils;->parseFromNow(Ljava/lang/String;Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v10

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lim/doit/pro/utils/SmartAddUtils;->parseTime(Ljava/lang/String;Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v10

    .line 476
    iget-object v0, v10, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v16, :cond_9

    .line 477
    const/4 v10, 0x0

    .line 482
    .end local v2    # "date":Ljava/util/Calendar;
    .end local v4    # "fromNow":Ljava/lang/String;
    .end local v5    # "inMonth":Ljava/lang/String;
    .end local v6    # "md":Ljava/lang/String;
    .end local v7    # "mdWord":Ljava/lang/String;
    .end local v8    # "monthWord":Ljava/lang/String;
    .end local v9    # "onDate":Ljava/lang/String;
    .end local v10    # "result":Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .end local v11    # "time":Ljava/lang/String;
    .end local v12    # "todayTomorrow":Ljava/lang/String;
    .end local v13    # "weekday":Ljava/lang/String;
    .end local v14    # "ymd":Ljava/lang/String;
    .end local v15    # "ymdhm":Ljava/lang/String;
    :cond_9
    :goto_0
    return-object v10

    .line 480
    :catch_0
    move-exception v3

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private parseFromNow(Ljava/lang/String;Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .locals 16
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "result"    # Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-static/range {p1 .. p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-object p2

    .line 980
    :cond_1
    move-object/from16 v9, p1

    .line 981
    .local v9, "oldInput":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 982
    const/4 v8, -0x1

    .local v8, "min":I
    const/4 v7, -0x1

    .local v7, "hour":I
    const/4 v3, -0x1

    .local v3, "dayOfMonth":I
    const/4 v13, -0x1

    .line 984
    .local v13, "week":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->_minuteWithUnitPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 985
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "[0-9]* *"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "digitStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1009
    .end local v4    # "digitStr":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1010
    .local v2, "date":Ljava/util/Calendar;
    move-object/from16 v0, p2

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    if-eqz v14, :cond_3

    .line 1011
    move-object/from16 v0, p2

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    .line 1013
    :cond_3
    const/4 v6, 0x1

    .line 1014
    .local v6, "hasDate":Z
    if-nez v2, :cond_4

    .line 1015
    const/4 v6, 0x0

    .line 1016
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1018
    :cond_4
    const/4 v12, 0x0

    .line 1019
    .local v12, "type":Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;
    const/4 v14, -0x1

    if-le v8, v14, :cond_9

    const/4 v14, -0x1

    if-le v7, v14, :cond_9

    .line 1020
    const/16 v14, 0xb

    invoke-virtual {v2, v14, v7}, Ljava/util/Calendar;->add(II)V

    .line 1021
    const/16 v14, 0xc

    invoke-virtual {v2, v14, v8}, Ljava/util/Calendar;->add(II)V

    .line 1022
    sget-object v12, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->HM:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1023
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    .line 1041
    :goto_2
    move-object/from16 v0, p2

    iput-object v9, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 1042
    if-eqz v6, :cond_d

    .line 1043
    sget-object v14, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->YMDHM:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    move-object/from16 v0, p2

    iput-object v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1047
    :goto_3
    move-object/from16 v0, p2

    iput-object v2, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    goto :goto_0

    .line 987
    .end local v2    # "date":Ljava/util/Calendar;
    .end local v6    # "hasDate":Z
    .end local v12    # "type":Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->_hourWithUnitDigitPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 988
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 989
    const-string v14, " *(hrs?|hours?).*$"

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 990
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 991
    .local v11, "tmpStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->TIME_SPLITE_FLAG:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 992
    .local v10, "tmp":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 993
    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v8, v14, 0x6

    .line 994
    goto/16 :goto_1

    .line 995
    .end local v10    # "tmp":[Ljava/lang/String;
    .end local v11    # "tmpStr":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "[0-9]* *"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 996
    .restart local v4    # "digitStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 998
    goto/16 :goto_1

    .end local v4    # "digitStr":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->_dayWithUnitPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 999
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "[0-9]* *"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1000
    .restart local v4    # "digitStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1001
    goto/16 :goto_1

    .end local v4    # "digitStr":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/utils/SmartAddUtils;->_weekWithUnitPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1002
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "[0-9]* *"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1003
    .restart local v4    # "digitStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    goto/16 :goto_1

    .line 1005
    .end local v4    # "digitStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1006
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1024
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "date":Ljava/util/Calendar;
    .restart local v6    # "hasDate":Z
    .restart local v12    # "type":Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;
    :cond_9
    const/4 v14, -0x1

    if-le v8, v14, :cond_a

    .line 1025
    const/16 v14, 0xc

    invoke-virtual {v2, v14, v8}, Ljava/util/Calendar;->add(II)V

    .line 1026
    sget-object v12, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->m:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1027
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    goto/16 :goto_2

    .line 1028
    :cond_a
    const/4 v14, -0x1

    if-le v7, v14, :cond_b

    .line 1029
    const/16 v14, 0xb

    invoke-virtual {v2, v14, v7}, Ljava/util/Calendar;->add(II)V

    .line 1030
    sget-object v12, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->H:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1031
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    goto/16 :goto_2

    .line 1032
    :cond_b
    if-lez v3, :cond_c

    .line 1033
    const/4 v14, 0x5

    invoke-virtual {v2, v14, v3}, Ljava/util/Calendar;->add(II)V

    .line 1034
    sget-object v12, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->D:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1035
    goto/16 :goto_2

    :cond_c
    if-lez v13, :cond_0

    .line 1036
    const/4 v14, 0x3

    invoke-virtual {v2, v14, v13}, Ljava/util/Calendar;->add(II)V

    .line 1037
    sget-object v12, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->W:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 1038
    goto/16 :goto_2

    .line 1045
    :cond_d
    move-object/from16 v0, p2

    iput-object v12, v0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    goto/16 :goto_3
.end method

.method private parseInMonth(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 786
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-object v3

    .line 789
    :cond_1
    const/4 v2, -0x1

    .line 790
    .local v2, "month":I
    const/4 v0, 0x0

    .line 791
    .local v0, "i":I
    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->monthDigitWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 798
    :goto_2
    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 799
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 800
    .local v3, "result":Ljava/util/Calendar;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 801
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 802
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 803
    invoke-virtual {v3, v7, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 791
    .end local v3    # "result":Ljava/util/Calendar;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 792
    .local v1, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 793
    move v2, v0

    .line 794
    goto :goto_2

    .line 796
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseMD(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 665
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    const/4 v2, 0x0

    .line 691
    :cond_0
    :goto_0
    return-object v2

    .line 668
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "oriInput":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 670
    const/4 v2, 0x0

    .line 672
    .local v2, "result":Ljava/util/Calendar;
    invoke-direct {p0}, Lim/doit/pro/utils/SmartAddUtils;->getLocalSettingMDFormat()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "localFormat":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 675
    invoke-static {p1, v0}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 677
    :cond_2
    if-nez v2, :cond_3

    .line 678
    sget-object v4, Lim/doit/pro/utils/SmartAddUtils;->MDDigitPattern:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 679
    const-string v4, "MM-dd"

    invoke-static {p1, v4}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 684
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 685
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 686
    .local v3, "today":Ljava/util/Calendar;
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 687
    invoke-static {v2, v3, v6}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 688
    invoke-virtual {v2, v6, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 680
    .end local v3    # "today":Ljava/util/Calendar;
    :cond_4
    sget-object v4, Lim/doit/pro/utils/SmartAddUtils;->DMDigitPattern:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    const-string v4, "dd-MM"

    invoke-static {p1, v4}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    goto :goto_1
.end method

.method private parseMDWord(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 12
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 704
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-object v5

    .line 707
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v4, -0x1

    .local v4, "month":I
    const/4 v0, -0x1

    .line 709
    .local v0, "day":I
    iget-object v7, p0, Lim/doit/pro/utils/SmartAddUtils;->monthWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 718
    :goto_2
    const/4 v2, 0x1

    .line 719
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 720
    iget-object v7, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lim/doit/pro/utils/SmartAddUtils;->dateWordPattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "dayStr":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 723
    invoke-direct {p0, v1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 724
    iget-object v7, p0, Lim/doit/pro/utils/SmartAddUtils;->dateDigitWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 732
    :cond_2
    :goto_4
    const/4 v7, -0x1

    if-le v4, v7, :cond_0

    if-lez v0, :cond_0

    .line 733
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v5

    .line 734
    .local v5, "result":Ljava/util/Calendar;
    const/4 v7, 0x2

    invoke-virtual {v5, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 735
    const/4 v7, 0x5

    invoke-virtual {v5, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 736
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v5, v7, v10}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 737
    invoke-virtual {v5, v10, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 709
    .end local v1    # "dayStr":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/Calendar;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 710
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 711
    iget-object v8, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 713
    move v4, v2

    .line 714
    goto :goto_2

    .line 716
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 724
    .end local v3    # "item":Ljava/lang/String;
    .restart local v1    # "dayStr":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 725
    .restart local v3    # "item":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 726
    move v0, v2

    .line 727
    goto :goto_4

    .line 729
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private parseMonthWord(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 754
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-object v3

    .line 757
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, -0x1

    .line 758
    .local v2, "month":I
    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->monthWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 764
    if-lez v2, :cond_0

    .line 765
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 766
    .local v3, "result":Ljava/util/Calendar;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 767
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 768
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 769
    invoke-virtual {v3, v7, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 758
    .end local v3    # "result":Ljava/util/Calendar;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 759
    .local v1, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 760
    move v2, v0

    .line 762
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseOnDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 820
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-object v3

    .line 823
    :cond_1
    const/4 v0, -0x1

    .line 824
    .local v0, "date":I
    const/4 v1, 0x1

    .line 825
    .local v1, "i":I
    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->dateDigitWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 832
    :goto_2
    if-lez v0, :cond_0

    .line 833
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 834
    .local v3, "result":Ljava/util/Calendar;
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 835
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 836
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 825
    .end local v3    # "result":Ljava/util/Calendar;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 826
    .local v2, "item":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 827
    move v0, v1

    .line 828
    goto :goto_2

    .line 830
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseTime(Ljava/lang/String;Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .locals 12
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "result"    # Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 920
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-object p2

    .line 923
    :cond_1
    move-object v5, p1

    .line 924
    .local v5, "oldInput":Ljava/lang/String;
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[^0-9"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".:"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 926
    .local v6, "tmp":Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, "hour":I
    const/4 v4, 0x0

    .line 927
    .local v4, "minute":I
    const-string v7, "[:.]"

    invoke-direct {p0, p1, v7}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 928
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".:"

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "arr":[Ljava/lang/String;
    aget-object v7, v0, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 930
    aget-object v7, v0, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 934
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 935
    .local v1, "date":Ljava/util/Calendar;
    iget-object v7, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    if-eqz v7, :cond_2

    .line 936
    iget-object v7, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 938
    :cond_2
    const/4 v7, -0x1

    if-le v3, v7, :cond_0

    .line 939
    const/4 v2, 0x1

    .line 940
    .local v2, "hasDate":Z
    if-nez v1, :cond_3

    .line 941
    const/4 v2, 0x0

    .line 942
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    .line 944
    :cond_3
    const-string v7, "p(m)?|afternoon"

    invoke-direct {p0, p1, v7}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 945
    add-int/lit8 v3, v3, 0xc

    .line 947
    :cond_4
    const/16 v7, 0xb

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 948
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 949
    if-nez v2, :cond_5

    .line 950
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v1, v7, v10}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 951
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v11}, Ljava/util/Calendar;->add(II)V

    .line 953
    :cond_5
    iput-object v5, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->dateStringWithPrefix:Ljava/lang/String;

    .line 954
    iput-boolean v10, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    .line 955
    if-eqz v2, :cond_7

    .line 956
    sget-object v7, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->YMDHM:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    iput-object v7, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    .line 960
    :goto_2
    iput-object v1, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->date:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 932
    .end local v1    # "date":Ljava/util/Calendar;
    .end local v2    # "hasDate":Z
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 958
    .restart local v1    # "date":Ljava/util/Calendar;
    .restart local v2    # "hasDate":Z
    :cond_7
    sget-object v7, Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;->HM:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    iput-object v7, p2, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;

    goto :goto_2
.end method

.method private parseTodayTomorrow(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    const/4 v0, 0x0

    .line 906
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    const/4 v0, 0x0

    .line 901
    .local v0, "result":Ljava/util/Calendar;
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_today:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    .line 903
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->_tomorrow:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method private parseWeekDay(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 852
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-object v3

    .line 855
    :cond_1
    const/4 v0, -0x1

    .line 856
    .local v0, "dayOfWeek":I
    const/4 v1, 0x1

    .line 857
    .local v1, "i":I
    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->weekDayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 864
    :goto_2
    if-lez v0, :cond_0

    .line 865
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 866
    .local v3, "result":Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 868
    const-string v4, "Monday"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v5

    .line 869
    invoke-virtual {v5}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v5

    .line 868
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 869
    if-eqz v4, :cond_2

    if-ne v0, v6, :cond_2

    .line 870
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 872
    :cond_2
    const-string v4, "next|nxt"

    invoke-direct {p0, p1, v4}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 873
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 875
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 857
    .end local v3    # "result":Ljava/util/Calendar;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    .local v2, "item":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 859
    move v0, v1

    .line 860
    goto :goto_2

    .line 862
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseYMD(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    const/4 v3, 0x0

    .line 651
    :cond_0
    :goto_0
    return-object v3

    .line 625
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "oriInput":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/utils/SmartAddUtils;->DATE_SPLIT_FLAG:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 627
    const/4 v3, 0x0

    .line 629
    .local v3, "result":Ljava/util/Calendar;
    invoke-direct {p0}, Lim/doit/pro/utils/SmartAddUtils;->getLocalYMDFormat()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "localFormat":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->getLocalYMDPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "localPattern":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 634
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 635
    invoke-static {p1, v0}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 637
    :cond_2
    if-nez v3, :cond_3

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->YMDDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 639
    const-string v5, "yyyy-MM-dd"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 648
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 649
    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    .line 640
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->MDYDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 641
    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 641
    if-eqz v5, :cond_5

    .line 642
    const-string v5, "MM-dd-yyyy"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 643
    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->DMYDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 644
    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 643
    invoke-direct {p0, v2, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 644
    if-eqz v5, :cond_3

    .line 645
    const-string v5, "dd-MM-yyyy"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_1
.end method

.method private parseYMDHM(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    const/4 v3, 0x0

    .line 607
    :cond_0
    :goto_0
    return-object v3

    .line 582
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->removePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "oriInput":Ljava/lang/String;
    invoke-direct {p0, v2}, Lim/doit/pro/utils/SmartAddUtils;->formatYMDHMForParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 584
    const/4 v3, 0x0

    .line 586
    .local v3, "result":Ljava/util/Calendar;
    invoke-direct {p0}, Lim/doit/pro/utils/SmartAddUtils;->getLocalYMDFormat()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "localFormat":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->getLocalYMDPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "localPattern":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 592
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 593
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HH:mm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 596
    :cond_2
    if-nez v3, :cond_0

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->YMDHMDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 598
    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    .line 599
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->MDYHMDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 600
    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    invoke-direct {p0, v2, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 600
    if-eqz v5, :cond_4

    .line 601
    const-string v5, "MM-dd-yyyy HH:mm"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    goto/16 :goto_0

    .line 602
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lim/doit/pro/utils/SmartAddUtils;->DMYHMDigitPattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 603
    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 602
    invoke-direct {p0, v2, v5}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 603
    if-eqz v5, :cond_0

    .line 604
    const-string v5, "dd-MM-yyyy HH:mm"

    invoke-static {p1, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private patternFromNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 966
    sget-object v1, Lim/doit/pro/utils/SmartAddUtils;->fromNowPattern:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "result":Ljava/lang/String;
    const-string v1, "(hrs?|hours?|min|minutes?)"

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkTimeExist(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-object v0

    .line 970
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private patternInMonth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->END_AT_PRE:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 779
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->monthWithInPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 782
    return-object v0

    .line 778
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v2, "in +"

    goto :goto_0
.end method

.method private patternMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 657
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->MDDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 658
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->DMDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 661
    return-object v0

    .line 656
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    goto :goto_0
.end method

.method private patternMDWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 697
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->MDWordPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 700
    return-object v0

    .line 696
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    goto :goto_0
.end method

.method private patternMonthWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 747
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->monthWrodPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 750
    return-object v0

    .line 746
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    goto :goto_0
.end method

.method private patternOnDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->END_AT_PRE:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->dateWithOnPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 816
    return-object v0

    .line 812
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v2, "on +"

    goto :goto_0
.end method

.method private patternTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->END_AT_PRE:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 912
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->timePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkTimeExist(Ljava/lang/String;)V

    .line 915
    return-object v0

    .line 911
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private patternTodayTomorrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_today:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->_tomorrow:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "tomorrowResult":Ljava/lang/String;
    invoke-direct {p0, v1}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 890
    if-eqz v1, :cond_0

    .line 891
    move-object v0, v1

    .line 893
    :cond_0
    return-object v0
.end method

.method private patternWeekDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->weekDayPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 848
    return-object v0
.end method

.method private patternYMD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->YMDDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->MDYDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->DMYDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 618
    return-object v0

    .line 612
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    goto :goto_0
.end method

.method private patternYMDHM(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/utils/SmartAddUtils$NotParseException;
        }
    .end annotation

    .prologue
    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 569
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->YMDHMDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 570
    sget-object v3, Lim/doit/pro/utils/SmartAddUtils;->MDYHMDigitPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lim/doit/pro/utils/SmartAddUtils;->DMYHMDigitPattern:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/utils/SmartAddUtils;->END_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lim/doit/pro/utils/SmartAddUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkDateExist(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v0}, Lim/doit/pro/utils/SmartAddUtils;->checkTimeExist(Ljava/lang/String;)V

    .line 575
    return-object v0

    .line 568
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    goto :goto_0
.end method

.method private removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 516
    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->START_AT_PRE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 520
    iget-object v1, p0, Lim/doit/pro/utils/SmartAddUtils;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 523
    :cond_2
    return-object p1
.end method


# virtual methods
.method public parseContext(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/utils/SmartAddUtils$SmartAddTaskContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "contextNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    :cond_0
    const/4 v2, 0x0

    .line 348
    :cond_1
    return-object v2

    .line 326
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v2, "selectedNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/utils/SmartAddUtils$SmartAddTaskContext;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lim/doit/pro/utils/SmartAddUtils;->START_PREFIX:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@|(at +)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 331
    aget-object v3, v0, v1

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parseEndAt(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 352
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v5

    .line 357
    :cond_1
    iget-object v6, p0, Lim/doit/pro/utils/SmartAddUtils;->END_AT_PRE:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 358
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 359
    .local v1, "match":Ljava/util/regex/Matcher;
    const/4 v3, -0x1

    .line 360
    .local v3, "pos":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_3

    .line 374
    :goto_1
    if-eq v3, v8, :cond_0

    .line 377
    const/4 v5, 0x1

    iput-boolean v5, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    .line 378
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->parseDate(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v5

    goto :goto_0

    .line 361
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 362
    .local v4, "tmpPos":I
    if-eq v3, v8, :cond_4

    if-ne v3, v4, :cond_0

    .line 365
    :cond_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 366
    .local v0, "end":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 367
    const-string v7, "^[a-zA-Z0-9]"

    .line 366
    invoke-direct {p0, v6, v7}, Lim/doit/pro/utils/SmartAddUtils;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 367
    if-eqz v6, :cond_2

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 371
    move v3, v4

    .line 372
    goto :goto_1
.end method

.method public parseStartAt(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils;->isDueDate:Z

    .line 386
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils;->parseDate(Ljava/lang/String;)Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;

    move-result-object v0

    goto :goto_0
.end method
