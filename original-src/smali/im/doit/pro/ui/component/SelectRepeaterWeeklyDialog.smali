.class public Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;
.super Ljava/lang/Object;
.source "SelectRepeaterWeeklyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;,
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUntilClickListener;,
        Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUpClickListener;
    }
.end annotation


# static fields
.field private static final MAX_CYCLE:I = 0x9

.field private static final MIN_CYCLE:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCycleTV:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mDownBtn:Landroid/widget/ImageButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOKBtn:Landroid/widget/Button;

.field private mOnSelectWeeklyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

.field private mRepeater:Lim/doit/pro/model/Repeater;

.field private mUnitTV:Landroid/widget/TextView;

.field private mUntilBtn:Landroid/widget/Button;

.field private mUpBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mActivity:Landroid/app/Activity;

    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->setCycleViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mOnSelectWeeklyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->setUntilViewContent()V

    return-void
.end method

.method private initData(Lim/doit/pro/model/Repeater;)V
    .locals 4
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 79
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 80
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    if-eqz v2, :cond_0

    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v3}, Lim/doit/pro/model/Repeater;->getMode()Lim/doit/pro/model/enums/RepeaterMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    new-instance v2, Lim/doit/pro/model/Repeater;

    invoke-direct {v2}, Lim/doit/pro/model/Repeater;-><init>()V

    iput-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    .line 82
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    sget-object v3, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Repeater;->setMode(Lim/doit/pro/model/enums/RepeaterMode;)V

    .line 83
    new-instance v1, Lim/doit/pro/model/RepeaterWeekly;

    invoke-direct {v1}, Lim/doit/pro/model/RepeaterWeekly;-><init>()V

    .line 84
    .local v1, "weekly":Lim/doit/pro/model/RepeaterWeekly;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lim/doit/pro/model/RepeaterWeekly;->setCycle(I)V

    .line 85
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Repeater;->setWeekly(Lim/doit/pro/model/RepeaterWeekly;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "selectedDayOfWeeks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v2

    invoke-virtual {v2, v0}, Lim/doit/pro/model/RepeaterWeekly;->setDays(Ljava/util/ArrayList;)V

    .line 90
    .end local v0    # "selectedDayOfWeeks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "weekly":Lim/doit/pro/model/RepeaterWeekly;
    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUpBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUpClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUpClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUpClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDownBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnDownClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mOKBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUntilBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUntilClickListener;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUntilClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnUntilClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    const v7, 0x7f0b01a8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mCycleTV:Landroid/widget/TextView;

    .line 94
    const v7, 0x7f0b01a9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUnitTV:Landroid/widget/TextView;

    .line 95
    const v7, 0x7f0b01a5

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUpBtn:Landroid/widget/ImageButton;

    .line 96
    const v7, 0x7f0b01a6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDownBtn:Landroid/widget/ImageButton;

    .line 97
    const v7, 0x7f0b0092

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mCancelBtn:Landroid/widget/Button;

    .line 98
    const v7, 0x7f0b0117

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mOKBtn:Landroid/widget/Button;

    .line 99
    const v7, 0x7f0b01aa

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUntilBtn:Landroid/widget/Button;

    .line 100
    const v7, 0x7f0b0124

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 101
    .local v3, "dayOfWeekWrap":Landroid/widget/LinearLayout;
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v2

    .line 102
    .local v2, "dayOfWeekStart":I
    const/4 v7, 0x7

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    .line 103
    .local v4, "dayOfWeeks":[I
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 104
    .local v1, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v1, :cond_0

    .line 125
    return-void

    .line 105
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, "cellTV":Landroid/widget/TextView;
    add-int v7, v2, v6

    add-int/lit8 v7, v7, -0x1

    rem-int/lit8 v5, v7, 0x7

    .line 107
    .local v5, "doitDayOfWeek":I
    aget v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v7}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/RepeaterWeekly;->getDays()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 110
    new-instance v7, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;

    invoke-direct {v7, p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :array_0
    .array-data 4
        0x7f0c00dd
        0x7f0c00d7
        0x7f0c00d8
        0x7f0c00d9
        0x7f0c00da
        0x7f0c00db
        0x7f0c00dc
    .end array-data
.end method

.method private initViewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUnitTV:Landroid/widget/TextView;

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->setCycleViewContent()V

    .line 131
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->setUntilViewContent()V

    .line 132
    return-void
.end method

.method private setCycleViewContent()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mCycleTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/RepeaterWeekly;->getCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private setUntilViewContent()V
    .locals 3

    .prologue
    .line 139
    const v1, 0x7f0c00a8

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "formatText":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mRepeater:Lim/doit/pro/model/Repeater;

    invoke-virtual {v2}, Lim/doit/pro/model/Repeater;->getEndsOn()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mUntilBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method


# virtual methods
.method public setOnSelectWeeklyFinishListner(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mOnSelectWeeklyFinishListner:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

    .line 53
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/Repeater;)V
    .locals 5
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->initData(Lim/doit/pro/model/Repeater;)V

    .line 67
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDialog:Landroid/app/Dialog;

    .line 68
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03005f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->initView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->initViewContent(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->initListener()V

    .line 75
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 76
    return-void
.end method
