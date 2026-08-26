.class public Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;
.super Ljava/lang/Object;
.source "SelectRepeaterMonthlyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnCancelClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDateClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpWeekClickListener;
    }
.end annotation


# static fields
.field private static final MAX_CYCLE:I = 0xb

.field private static final MAX_DAY_OF_WEEK:I = 0x6

.field private static final MAX_WEEK:I = 0x4

.field private static final MIN_CYCLE:I = 0x1

.field private static final MIN_DAY_OF_WEEK:I = 0x0

.field private static final MIN_WEEK:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCycleTV:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mDownDateBtn:Landroid/widget/ImageButton;

.field private mDownDayOfWeekBtn:Landroid/widget/ImageButton;

.field private mDownMonthBtn:Landroid/widget/ImageButton;

.field private mDownWeekBtn:Landroid/widget/ImageButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMonthlyDateTV:Landroid/widget/TextView;

.field private mMonthlyDateWrap:Landroid/widget/LinearLayout;

.field private mMonthlyDayOfWeekTV:Landroid/widget/TextView;

.field private mMonthlyModeTV:Landroid/widget/TextView;

.field private mMonthlyWeekTV:Landroid/widget/TextView;

.field private mMonthlyWeekWrap:Landroid/widget/LinearLayout;

.field private mOKBtn:Landroid/widget/Button;

.field private mOnSelectMonthlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

.field private mRepeater:Lim/doit/pro/model/Repeater;

.field private mStartAT:Ljava/util/Calendar;

.field private mUnitTV:Landroid/widget/TextView;

.field private mUntilBtn:Landroid/widget/Button;

.field private mUpDateBtn:Landroid/widget/ImageButton;

.field private mUpDayOfWeekBtn:Landroid/widget/ImageButton;

.field private mUpMonthBtn:Landroid/widget/ImageButton;

.field private mUpWeekBtn:Landroid/widget/ImageButton;

.field private maxDayOfMonth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mActivity:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setCycleViewContent()V

    return-void
.end method

.method static synthetic access$10(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyWeekViewContent()V

    return-void
.end method

.method static synthetic access$11(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyDayOfWeekViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mOnSelectMonthlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setUntilViewContent()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mStartAT:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyModeViewContent()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->maxDayOfMonth:I

    return v0
.end method

.method static synthetic access$9(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyDateViewContent()V

    return-void
.end method

.method private initData(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 94
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mStartAT:Ljava/util/Calendar;

    .line 95
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mStartAT:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    iput v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->maxDayOfMonth:I

    .line 96
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 97
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    if-eqz v2, :cond_0

    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    new-instance v2, Lim/doit/pro/model/Repeater;

    invoke-direct {v2}, Lim/doit/pro/model/Repeater;-><init>()V

    iput-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 99
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Repeater;->setMode(Lim/doit/pro/model/enums/RepeaterMode;)V

    .line 100
    new-instance v0, Lim/doit/pro/model/RepeaterMonthly;

    invoke-direct {v0}, Lim/doit/pro/model/RepeaterMonthly;-><init>()V

    .line 101
    .local v0, "monthly":Lim/doit/pro/model/RepeaterMonthly;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lim/doit/pro/model/RepeaterMonthly;->setCycle(I)V

    .line 102
    new-instance v1, Lim/doit/pro/model/RepeaterMonthlyDate;

    invoke-direct {v1}, Lim/doit/pro/model/RepeaterMonthlyDate;-><init>()V

    .line 103
    .local v1, "monthlyDate":Lim/doit/pro/model/RepeaterMonthlyDate;
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mStartAT:Ljava/util/Calendar;

    invoke-static {v2}, Lim/doit/pro/utils/RepeaterUtils;->convert2RepeaterDate(Ljava/util/Calendar;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/RepeaterMonthlyDate;->setDayOfMonth(I)V

    .line 104
    invoke-virtual {v0, v1}, Lim/doit/pro/model/RepeaterMonthly;->setDate(Lim/doit/pro/model/RepeaterMonthlyDate;)V

    .line 105
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2, v0}, Lim/doit/pro/model/Repeater;->setMonthly(Lim/doit/pro/model/RepeaterMonthly;)V

    .line 107
    .end local v0    # "monthly":Lim/doit/pro/model/RepeaterMonthly;
    .end local v1    # "monthlyDate":Lim/doit/pro/model/RepeaterMonthlyDate;
    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpMonthBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownMonthBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnCancelClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnCancelClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mOKBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUntilBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyModeTV:Landroid/widget/TextView;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnMonthlyModeClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpDateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDateClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDateClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDateClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownDateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpWeekBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpWeekClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpWeekClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownWeekBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpDayOfWeekBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownDayOfWeekBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    const v0, 0x7f0b01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mCycleTV:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0b01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUnitTV:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mCancelBtn:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mOKBtn:Landroid/widget/Button;

    .line 114
    const v0, 0x7f0b01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUntilBtn:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0b01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpMonthBtn:Landroid/widget/ImageButton;

    .line 116
    const v0, 0x7f0b01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownMonthBtn:Landroid/widget/ImageButton;

    .line 117
    const v0, 0x7f0b0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyModeTV:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0b0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDateWrap:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDateTV:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0b011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpDateBtn:Landroid/widget/ImageButton;

    .line 121
    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownDateBtn:Landroid/widget/ImageButton;

    .line 122
    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyWeekWrap:Landroid/widget/LinearLayout;

    .line 123
    const v0, 0x7f0b0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyWeekTV:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDayOfWeekTV:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpWeekBtn:Landroid/widget/ImageButton;

    .line 126
    const v0, 0x7f0b011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownWeekBtn:Landroid/widget/ImageButton;

    .line 127
    const v0, 0x7f0b0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUpDayOfWeekBtn:Landroid/widget/ImageButton;

    .line 128
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDownDayOfWeekBtn:Landroid/widget/ImageButton;

    .line 129
    return-void
.end method

.method private initViewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUnitTV:Landroid/widget/TextView;

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setCycleViewContent()V

    .line 135
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setUntilViewContent()V

    .line 136
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyModeViewContent()V

    .line 137
    return-void
.end method

.method private setCycleViewContent()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mCycleTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterMonthly;->getCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method private setMonthlyDateViewContent()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDateTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mStartAT:Ljava/util/Calendar;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/RepeaterMonthlyDate;->getDayOfMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/utils/RepeaterUtils;->getDayOfMonthByRepeater(Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method private setMonthlyDayOfWeekViewContent()V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v0

    .line 181
    .local v0, "dayOfWeek":I
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDayOfWeekTV:Landroid/widget/TextView;

    sget-object v2, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_FORMAT:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    return-void
.end method

.method private setMonthlyModeViewContent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyModeTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 153
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v0}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyModeTV:Landroid/widget/TextView;

    const v1, 0x7f0c01af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyWeekWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyDateViewContent()V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyModeTV:Landroid/widget/TextView;

    const v1, 0x7f0c01ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyDateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyWeekWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyWeekViewContent()V

    .line 163
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->setMonthlyDayOfWeekViewContent()V

    goto :goto_0
.end method

.method private setMonthlyWeekViewContent()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v0

    .line 173
    .local v0, "viewWeek":I
    if-gez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mMonthlyWeekTV:Landroid/widget/TextView;

    sget-object v2, Lim/doit/pro/utils/Constants;->REPEATER_MONTHLY_WEEKS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    return-void
.end method

.method private setUntilViewContent()V
    .locals 3

    .prologue
    .line 144
    const v1, 0x7f0c00a8

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "formatText":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mUntilBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method


# virtual methods
.method public setOnSelectMonthlyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

    .prologue
    .line 67
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mOnSelectMonthlyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

    .line 68
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;
    .param p2, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->initData(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V

    .line 82
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDialog:Landroid/app/Dialog;

    .line 83
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->initView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->initViewContent(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->initListener()V

    .line 90
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 91
    return-void
.end method
