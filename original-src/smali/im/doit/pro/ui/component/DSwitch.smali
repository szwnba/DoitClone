.class public Lim/doit/pro/ui/component/DSwitch;
.super Landroid/widget/CompoundButton;
.source "DSwitch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lim/doit/pro/ui/component/DSwitch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/DSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const v0, 0x7f010138

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/DSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    .line 146
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 147
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 148
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 153
    sget-object v4, Lim/doit/pro/v4/R$styleable;->DSwitch:[I

    .line 152
    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->checkTrackOffOnDrawable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 166
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 168
    const/4 v4, 0x7

    .line 167
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbTextPadding:I

    .line 176
    const/16 v4, 0xa

    .line 175
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchPadding:I

    .line 179
    const/16 v4, 0x8

    .line 178
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 180
    .local v1, "appearance":I
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0, p1, v1}, Lim/doit/pro/ui/component/DSwitch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 186
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    .line 187
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mMinFlingVelocity:I

    .line 190
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->refreshDrawableState()V

    .line 191
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 192
    return-void

    .line 161
    .end local v1    # "appearance":I
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 694
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 652
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 653
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 654
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 655
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 656
    return-void
.end method

.method private checkTrackOffOnDrawable()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 697
    iget v0, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    .line 819
    :goto_0
    return v0

    .line 818
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 819
    iget v0, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchWidth:I

    iget v1, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 569
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 570
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchTop:I

    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 571
    .local v3, "thumbTop":I
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchLeft:I

    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 572
    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    .line 571
    sub-int v1, v4, v5

    .line 573
    .local v1, "thumbLeft":I
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 574
    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 573
    add-int/2addr v4, v5

    .line 574
    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    .line 573
    add-int v2, v4, v5

    .line 575
    .local v2, "thumbRight":I
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchBottom:I

    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 576
    .local v0, "thumbBottom":I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    .line 577
    int-to-float v4, v0

    .line 576
    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    const-string p1, ""

    .line 560
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    .line 561
    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    .line 560
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 562
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    .line 560
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 666
    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    .line 669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 670
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 672
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 674
    if-eqz v0, :cond_3

    .line 676
    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 677
    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 678
    .local v2, "xvel":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 679
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 683
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/DSwitch;->animateThumbToCheckedState(Z)V

    .line 687
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v4

    .line 669
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "xvel":F
    :cond_1
    move v1, v4

    .line 679
    goto :goto_1

    .line 681
    :cond_2
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 685
    .end local v1    # "newState":Z
    .end local v2    # "xvel":F
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lim/doit/pro/ui/component/DSwitch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 833
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 835
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getDrawableState()[I

    move-result-object v0

    .line 840
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 842
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 845
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->invalidate()V

    .line 846
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 807
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 808
    .local v0, "padding":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    iget v1, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 811
    :cond_0
    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackOnDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 824
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 825
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    sget-object v1, Lim/doit/pro/ui/component/DSwitch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->mergeDrawableStates([I[I)[I

    .line 828
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 749
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 751
    move-object/from16 v0, p0

    iget v6, v0, Lim/doit/pro/ui/component/DSwitch;->mSwitchLeft:I

    .line 752
    .local v6, "switchLeft":I
    move-object/from16 v0, p0

    iget v9, v0, Lim/doit/pro/ui/component/DSwitch;->mSwitchTop:I

    .line 753
    .local v9, "switchTop":I
    move-object/from16 v0, p0

    iget v7, v0, Lim/doit/pro/ui/component/DSwitch;->mSwitchRight:I

    .line 754
    .local v7, "switchRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lim/doit/pro/ui/component/DSwitch;->mSwitchBottom:I

    .line 756
    .local v1, "switchBottom":I
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->checkTrackOffOnDrawable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 757
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 759
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->refreshDrawableState()V

    .line 762
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 769
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 770
    .local v3, "switchInnerLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 771
    .local v5, "switchInnerTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 772
    .local v4, "switchInnerRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 773
    .local v2, "switchInnerBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 776
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 777
    move-object/from16 v0, p0

    iget v13, v0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 778
    .local v11, "thumbPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 779
    .local v10, "thumbLeft":I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Lim/doit/pro/ui/component/DSwitch;->mThumbWidth:I

    add-int/2addr v13, v14

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    .line 779
    add-int v12, v13, v14

    .line 782
    .local v12, "thumbRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 783
    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_1

    .line 788
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/DSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 789
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/DSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    .line 788
    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 791
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 793
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/DSwitch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lim/doit/pro/ui/component/DSwitch;->mOnLayout:Landroid/text/Layout;

    .line 795
    .local v8, "switchText":Landroid/text/Layout;
    :goto_1
    if-eqz v8, :cond_2

    .line 797
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 798
    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    .line 799
    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    .line 798
    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 796
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 800
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 802
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 803
    return-void

    .line 758
    .end local v2    # "switchInnerBottom":I
    .end local v3    # "switchInnerLeft":I
    .end local v4    # "switchInnerRight":I
    .end local v5    # "switchInnerTop":I
    .end local v8    # "switchText":Landroid/text/Layout;
    .end local v10    # "thumbLeft":I
    .end local v11    # "thumbPos":I
    .end local v12    # "thumbRight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 793
    .restart local v2    # "switchInnerBottom":I
    .restart local v3    # "switchInnerLeft":I
    .restart local v4    # "switchInnerRight":I
    .restart local v5    # "switchInnerTop":I
    .restart local v10    # "thumbLeft":I
    .restart local v11    # "thumbPos":I
    .restart local v12    # "thumbRight":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lim/doit/pro/ui/component/DSwitch;->mOffLayout:Landroid/text/Layout;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 714
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 716
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->getThumbScrollRange()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    .line 718
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 719
    .local v2, "switchRight":I
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 720
    .local v1, "switchLeft":I
    const/4 v3, 0x0

    .line 721
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 722
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 725
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getPaddingTop()I

    move-result v3

    .line 726
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 741
    :goto_1
    iput v1, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchLeft:I

    .line 742
    iput v3, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchTop:I

    .line 743
    iput v0, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchBottom:I

    .line 744
    iput v2, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchRight:I

    .line 745
    return-void

    .line 716
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 730
    .restart local v0    # "switchBottom":I
    .restart local v1    # "switchLeft":I
    .restart local v2    # "switchRight":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 731
    iget v5, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    .line 730
    sub-int v3, v4, v5

    .line 732
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 733
    goto :goto_1

    .line 736
    :sswitch_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 737
    iget v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 722
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mOnLayout:Landroid/text/Layout;

    if-nez v6, :cond_0

    .line 499
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lim/doit/pro/ui/component/DSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mOnLayout:Landroid/text/Layout;

    .line 501
    :cond_0
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mOffLayout:Landroid/text/Layout;

    if-nez v6, :cond_1

    .line 502
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lim/doit/pro/ui/component/DSwitch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v6

    iput-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mOffLayout:Landroid/text/Layout;

    .line 504
    :cond_1
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 506
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 507
    .local v1, "mTrackWidth":I
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 509
    .local v0, "mTrachHeight":I
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    .line 510
    iget-object v7, p0, Lim/doit/pro/ui/component/DSwitch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    .line 509
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 511
    .local v2, "maxTextWidth":I
    mul-int/lit8 v6, v2, 0x2

    .line 512
    iget v7, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbTextPadding:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget-object v7, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lim/doit/pro/ui/component/DSwitch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    .line 511
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 515
    .local v5, "switchWidth":I
    move v4, v0

    .line 517
    .local v4, "switchHeight":I
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbWidth:I

    .line 519
    iput v5, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchWidth:I

    .line 520
    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchHeight:I

    .line 522
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 523
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getMeasuredHeight()I

    move-result v3

    .line 524
    .local v3, "measuredHeight":I
    if-ge v3, v4, :cond_2

    .line 525
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    .line 526
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getMeasuredWidthAndState()I

    move-result v6

    invoke-virtual {p0, v6, v4}, Lim/doit/pro/ui/component/DSwitch;->setMeasuredDimension(II)V

    .line 531
    :cond_2
    :goto_0
    return-void

    .line 528
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0, v6, v4}, Lim/doit/pro/ui/component/DSwitch;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 583
    iget-object v6, p0, Lim/doit/pro/ui/component/DSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 585
    .local v0, "action":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 588
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 648
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_2
    :goto_1
    return v5

    .line 590
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 591
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 592
    .local v4, "y":F
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v3, v4}, Lim/doit/pro/ui/component/DSwitch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 593
    iput v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    .line 594
    iput v3, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchX:F

    .line 595
    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchY:F

    goto :goto_0

    .line 601
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 607
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 608
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 609
    .restart local v4    # "y":F
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    .line 610
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 611
    :cond_3
    iput v8, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    .line 612
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 613
    iput v3, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchX:F

    .line 614
    iput v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchY:F

    goto :goto_1

    .line 621
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 622
    .restart local v3    # "x":F
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchX:F

    sub-float v1, v3, v6

    .line 623
    .local v1, "dx":F
    const/4 v6, 0x0

    .line 624
    iget v7, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 623
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 625
    .local v2, "newPos":F
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2

    .line 626
    iput v2, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    .line 627
    iput v3, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchX:F

    .line 628
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->invalidate()V

    goto :goto_1

    .line 638
    .end local v1    # "dx":F
    .end local v2    # "newPos":F
    .end local v3    # "x":F
    :pswitch_5
    iget v6, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    if-ne v6, v8, :cond_4

    .line 639
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 642
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lim/doit/pro/ui/component/DSwitch;->mTouchMode:I

    .line 643
    iget-object v5, p0, Lim/doit/pro/ui/component/DSwitch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 550
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mOnLayout:Landroid/text/Layout;

    .line 551
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    return-void

    .line 550
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 702
    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->checkTrackOffOnDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    if-eqz p1, :cond_1

    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 704
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->refreshDrawableState()V

    .line 706
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 707
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lim/doit/pro/ui/component/DSwitch;->getThumbScrollRange()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbPosition:F

    .line 708
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->invalidate()V

    .line 709
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 707
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 322
    iput p1, p0, Lim/doit/pro/ui/component/DSwitch;->mSwitchPadding:I

    .line 323
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 324
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    .line 200
    sget-object v3, Lim/doit/pro/v4/R$styleable;->TextAppearance:[I

    .line 199
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 207
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 208
    iput-object v1, p0, Lim/doit/pro/ui/component/DSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 216
    :goto_0
    const/4 v3, 0x1

    .line 215
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 217
    .local v2, "ts":I
    if-eqz v2, :cond_0

    .line 218
    int-to-float v3, v2

    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 220
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    return-void

    .line 212
    .end local v2    # "ts":I
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/DSwitch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 304
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 305
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 307
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 308
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->invalidate()V

    .line 310
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 238
    if-lez p2, :cond_4

    .line 239
    if-nez p1, :cond_1

    .line 240
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 245
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 247
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 248
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 249
    .local v0, "need":I
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 250
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 256
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 242
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 247
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 250
    goto :goto_2

    .line 252
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 253
    iget-object v2, p0, Lim/doit/pro/ui/component/DSwitch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 254
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DSwitch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 491
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOff:Ljava/lang/CharSequence;

    .line 492
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 493
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 476
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mTextOn:Ljava/lang/CharSequence;

    .line 477
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 478
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 436
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 438
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 375
    iput p1, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbTextPadding:I

    .line 376
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 377
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 399
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 400
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 401
    return-void
.end method

.method public setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "trackOffDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 278
    return-void
.end method

.method public setTrackOffResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DSwitch;->setTrackOffDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "trackOnDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 263
    iput-object p1, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->requestLayout()V

    .line 265
    return-void
.end method

.method public setTrackOnResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DSwitch;->setTrackOnDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 412
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 850
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 851
    iget-object v0, p0, Lim/doit/pro/ui/component/DSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 850
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
