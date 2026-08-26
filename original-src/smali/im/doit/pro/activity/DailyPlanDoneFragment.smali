.class public Lim/doit/pro/activity/DailyPlanDoneFragment;
.super Landroid/support/v4/app/Fragment;
.source "DailyPlanDoneFragment.java"


# static fields
.field private static final KEY_ARRANGED_TIME:Ljava/lang/String; = "arranged_time"

.field private static final KEY_LEFT_TIME:Ljava/lang/String; = "left_time"


# instance fields
.field private arrangeTimeLabelView:Landroid/widget/TextView;

.field private arrangeTimeView:Landroid/widget/TextView;

.field private arrangedTime:I

.field private doneMsgView:Landroid/widget/TextView;

.field private goMoreFromNextBtn:Landroid/widget/Button;

.field private leftTime:I

.field private leftTimeLabelTime:Landroid/widget/TextView;

.field private leftTimeView:Landroid/widget/TextView;

.field private onGoMoreFromNextClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 127
    new-instance v0, Lim/doit/pro/activity/DailyPlanDoneFragment$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanDoneFragment$1;-><init>(Lim/doit/pro/activity/DailyPlanDoneFragment;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->onGoMoreFromNextClick:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "arranged_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangedTime:I

    .line 56
    const-string v1, "left_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    .line 57
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->goMoreFromNextBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->onGoMoreFromNextClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    .line 60
    const v0, 0x7f0b0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->doneMsgView:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangeTimeLabelView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0b012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangeTimeView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeLabelTime:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0b012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0b0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->goMoreFromNextBtn:Landroid/widget/Button;

    .line 68
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->setDoneMessageViewContent()V

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->setArrangedTimeViewContent()V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->setLeftTimeViewContent()V

    .line 74
    return-void
.end method

.method public static newInstance(II)Lim/doit/pro/activity/DailyPlanDoneFragment;
    .locals 3
    .param p0, "arrangedTime"    # I
    .param p1, "leftTime"    # I

    .prologue
    .line 33
    new-instance v1, Lim/doit/pro/activity/DailyPlanDoneFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/DailyPlanDoneFragment;-><init>()V

    .line 34
    .local v1, "newFragment":Lim/doit/pro/activity/DailyPlanDoneFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arranged_time"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v2, "left_time"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method

.method private setArrangedTimeViewContent()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangeTimeView:Landroid/widget/TextView;

    iget v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangedTime:I

    invoke-static {v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatMinuteToHM(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    if-gez v0, :cond_0

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangeTimeView:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0800a0

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :cond_0
    return-void
.end method

.method private setDoneMessageViewContent()V
    .locals 8

    .prologue
    .line 77
    const/4 v1, -0x1

    .line 78
    .local v1, "msg":I
    iget v4, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    if-gez v4, :cond_2

    .line 79
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "gender":Ljava/lang/String;
    const-string v4, "female"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const v1, 0x7f0c0061

    .line 100
    .end local v0    # "gender":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->doneMsgView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    return-void

    .line 82
    .restart local v0    # "gender":Ljava/lang/String;
    :cond_0
    const-string v4, "male"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const v1, 0x7f0c0062

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const v1, 0x7f0c0060

    .line 87
    goto :goto_0

    .end local v0    # "gender":Ljava/lang/String;
    :cond_2
    iget v4, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    if-nez v4, :cond_3

    .line 88
    const v1, 0x7f0c0063

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget v4, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangedTime:I

    iget v5, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 91
    .local v3, "workTime":F
    iget v4, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->arrangedTime:I

    int-to-float v4, v4

    div-float v2, v4, v3

    .line 92
    .local v2, "rate":F
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 93
    const v1, 0x7f0c0064

    .line 94
    goto :goto_0

    :cond_4
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 95
    const v1, 0x7f0c0065

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const v1, 0x7f0c0066

    goto :goto_0
.end method

.method private setLeftTimeViewContent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 113
    iget v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeLabelTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeLabelTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTimeView:Landroid/widget/TextView;

    iget v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment;->leftTime:I

    invoke-static {v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatMinuteToHM(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v1, 0x7f030065

    .line 45
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "layoutView":Landroid/view/View;
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->initData()V

    .line 47
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->initView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->initViewContent()V

    .line 49
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->initListener()V

    .line 50
    return-object v0
.end method
