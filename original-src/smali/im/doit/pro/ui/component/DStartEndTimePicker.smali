.class public Lim/doit/pro/ui/component/DStartEndTimePicker;
.super Landroid/widget/LinearLayout;
.source "DStartEndTimePicker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;
    }
.end annotation


# instance fields
.field private endTimeTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Calendar;

.field private mGap:I

.field private mStartDate:Ljava/util/Calendar;

.field private mTimeListener:Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;

.field private nextEndBtn:Landroid/widget/ImageButton;

.field private nextStartBtn:Landroid/widget/ImageButton;

.field private preEndBtn:Landroid/widget/ImageButton;

.field private preStartBtn:Landroid/widget/ImageButton;

.field private startTimeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startDate"    # Ljava/util/Calendar;
    .param p3, "endDate"    # Ljava/util/Calendar;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x1e

    iput v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mGap:I

    .line 48
    invoke-virtual {p0, p2, p3}, Lim/doit/pro/ui/component/DStartEndTimePicker;->initData(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 49
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DStartEndTimePicker;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startDate"    # Ljava/util/Calendar;
    .param p3, "endDate"    # Ljava/util/Calendar;
    .param p4, "gap"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/DStartEndTimePicker;-><init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 42
    iput p4, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mGap:I

    .line 43
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DStartEndTimePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DStartEndTimePicker;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mGap:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DStartEndTimePicker;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->setStartDateViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/DStartEndTimePicker;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->selectTimeAndCallback()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/DStartEndTimePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/DStartEndTimePicker;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->setEndDateViewContent()V

    return-void
.end method

.method private formatTime(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "str":Ljava/lang/String;
    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v1, v2}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->initView()V

    .line 66
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->initViewContent()V

    .line 67
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->initListener()V

    .line 68
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->preStartBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DStartEndTimePicker$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DStartEndTimePicker$1;-><init>(Lim/doit/pro/ui/component/DStartEndTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->nextStartBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DStartEndTimePicker$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DStartEndTimePicker$2;-><init>(Lim/doit/pro/ui/component/DStartEndTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->preEndBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DStartEndTimePicker$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DStartEndTimePicker$3;-><init>(Lim/doit/pro/ui/component/DStartEndTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->nextEndBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/DStartEndTimePicker$4;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DStartEndTimePicker$4;-><init>(Lim/doit/pro/ui/component/DStartEndTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mContext:Landroid/content/Context;

    const v1, 0x7f03009e

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    const v0, 0x7f0b01ae

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->preStartBtn:Landroid/widget/ImageButton;

    .line 73
    const v0, 0x7f0b01af

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->nextStartBtn:Landroid/widget/ImageButton;

    .line 74
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->startTimeTV:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->preEndBtn:Landroid/widget/ImageButton;

    .line 76
    const v0, 0x7f0b01b3

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->nextEndBtn:Landroid/widget/ImageButton;

    .line 77
    const v0, 0x7f0b01b1

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->endTimeTV:Landroid/widget/TextView;

    .line 78
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->setStartDateViewContent()V

    .line 82
    invoke-direct {p0}, Lim/doit/pro/ui/component/DStartEndTimePicker;->setEndDateViewContent()V

    .line 83
    return-void
.end method

.method private selectTimeAndCallback()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 139
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 141
    iget-object v2, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 142
    iget-object v3, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 143
    iget-object v4, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 140
    invoke-interface {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;->selectTime(IIII)V

    .line 145
    :cond_0
    return-void
.end method

.method private setEndDateViewContent()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->endTimeTV:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/DStartEndTimePicker;->formatTime(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 130
    return-void
.end method

.method private setStartDateViewContent()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->startTimeTV:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ui/component/DStartEndTimePicker;->formatTime(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 126
    return-void
.end method


# virtual methods
.method public initData(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "startDate"    # Ljava/util/Calendar;
    .param p2, "endDate"    # Ljava/util/Calendar;

    .prologue
    .line 53
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    .line 54
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    :cond_1
    return-void
.end method

.method public setOnSelectStartEndTimeListener(Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/ui/component/DStartEndTimePicker;->mTimeListener:Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;

    .line 32
    return-void
.end method
