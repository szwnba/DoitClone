.class public Lim/doit/pro/activity/LockSetupActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "LockSetupActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;


# instance fields
.field private final STEP_1:I

.field private final STEP_2:I

.field private final STEP_3:I

.field private final STEP_4:I

.field private final STEP_5:I

.field private final STEP_6:I

.field private final STEP_7:I

.field private final STEP_8:I

.field private choosePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private confirm:Z

.field private isUnset:Z

.field private lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

.field private step:I

.field private tipsView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_1:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_2:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_3:I

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_4:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_5:I

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_6:I

    .line 32
    const/4 v0, 0x7

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_7:I

    .line 33
    const/16 v0, 0x8

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->STEP_8:I

    .line 39
    iput-boolean v1, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    .line 41
    iput-boolean v1, p0, Lim/doit/pro/activity/LockSetupActivity;->isUnset:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LockSetupActivity;)Lim/doit/pro/ui/component/LockPatternView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    return-object v0
.end method

.method private complete()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lim/doit/pro/activity/LockSetupActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LockSetupActivity$1;-><init>(Lim/doit/pro/activity/LockSetupActivity;)V

    .line 168
    const-wide/16 v2, 0x7d0

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 169
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lim/doit/pro/activity/LockSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "unset_passcode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/activity/LockSetupActivity;->isUnset:Z

    .line 58
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getGenstureLockKey()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "lockKey":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {v0}, Lim/doit/pro/ui/component/LockPatternView;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    .line 62
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 63
    iget-boolean v1, p0, Lim/doit/pro/activity/LockSetupActivity;->isUnset:Z

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x1

    iput v1, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LockSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView;

    iput-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    .line 75
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/LockPatternView;->setOnPatternListener(Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;)V

    .line 76
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LockSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->updateView()V

    .line 81
    return-void
.end method

.method private resetPatternAfterWrong()V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lim/doit/pro/activity/LockSetupActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LockSetupActivity$2;-><init>(Lim/doit/pro/activity/LockSetupActivity;)V

    .line 231
    const-wide/16 v2, 0x1f4

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 232
    return-void
.end method

.method private setPatternWrong()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->setDisplayMode(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;)V

    .line 211
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    .line 212
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->resetPatternAfterWrong()V

    .line 213
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    const v5, 0x7f0c0243

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v1, 0x7f0c0245

    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iput-boolean v2, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 90
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-boolean v0, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->disableInput()V

    .line 95
    invoke-static {v2}, Lim/doit/pro/utils/LocalSettings;->saveIsShowGenstureLock(Z)V

    .line 96
    invoke-static {v3}, Lim/doit/pro/utils/LocalSettings;->saveGenstureLockKey(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->complete()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iput v4, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 101
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->setPatternWrong()V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-boolean v0, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 108
    iput-object v3, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    .line 110
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 111
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->setPatternWrong()V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iput-object v3, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    .line 122
    iput-boolean v2, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    .line 123
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 124
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0c0244

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->disableInput()V

    goto :goto_0

    .line 133
    :pswitch_5
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0c0244

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 135
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    goto/16 :goto_0

    .line 138
    :pswitch_6
    iget-boolean v0, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0c0242

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->disableInput()V

    .line 142
    invoke-static {v4}, Lim/doit/pro/utils/LocalSettings;->saveIsShowGenstureLock(Z)V

    .line 144
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    invoke-static {v0}, Lim/doit/pro/ui/component/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->saveGenstureLockKey(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->complete()V

    goto/16 :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->setPatternWrong()V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p0}, Lim/doit/pro/activity/LockSetupActivity;->finish()V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LockSetupActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->initData()V

    .line 53
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->initViewContent()V

    .line 54
    return-void
.end method

.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    .line 187
    const/4 v0, 0x7

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 188
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->updateView()V

    .line 207
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity;->choosePattern:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iput-boolean v1, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    .line 198
    :goto_1
    iget v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    if-ne v0, v1, :cond_2

    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    .line 205
    :goto_2
    invoke-direct {p0}, Lim/doit/pro/activity/LockSetupActivity;->updateView()V

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/LockSetupActivity;->confirm:Z

    goto :goto_1

    .line 200
    :cond_2
    iget v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    goto :goto_2

    .line 203
    :cond_3
    const/16 v0, 0x8

    iput v0, p0, Lim/doit/pro/activity/LockSetupActivity;->step:I

    goto :goto_2
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
